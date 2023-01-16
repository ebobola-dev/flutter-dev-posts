import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/config.dart';
import 'package:flutter_dev_posts/hive/boxes.dart';
import 'package:flutter_dev_posts/models/errors/api_error.dart';
import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:flutter_dev_posts/models/post_order/post_order.dart';
import 'package:flutter_dev_posts/repositories/post_repository.dart';
import 'package:flutter_dev_posts/services/cache_images.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final IPostRepository _postRepository;
  final ICacheImages _cacheImages;
  PostsBloc(this._postRepository, this._cacheImages)
      : super(const PostsState()) {
    on<_Init>(_onInit);
    on<_Update>(_onUpdate);

    add(const PostsEvent.init());
  }

  Future<void> _onInit(_Init event, Emitter<PostsState> emit) async {
    emit(state.copyWith(isInitialization: true));
    final postBox = Boxes.getPostBox();
    final postOrderBox = Boxes.getPostOrderBox();
    if (Config.fakeDelay) {
      await Future.delayed(const Duration(seconds: Config.fakeDelaySeconds));
    }

    //? Отдаём посты в нужном порядке
    List<Post> localPosts = [];
    if (postOrderBox.isEmpty) {
      //? Если нет порядка (не сохранён), на всякий случай отдаём что есть (но там ничего не должно быть, если PostOrder пуст)
      localPosts = postBox.values.toList();
      //? И сохраняем их порядок
      await postOrderBox.put(
        0,
        PostOrder(orderIdList: localPosts.map((post) => post.id).toList()),
      );
    } else {
      final postOrder = postOrderBox.getAt(0)!;
      if (postOrder.orderIdList.length <= postBox.values.length) {
        for (var postIdInOrder in postOrder.orderIdList) {
          final post = postBox.values
              .firstWhereOrNull((post_) => post_.id == postIdInOrder);
          if (post != null) {
            localPosts.add(post);
          } else {
            log(
              'Unknown id found in post order id list: $postIdInOrder',
              name: 'PostsBloc[_onInit]',
            );
          }
        }

        //? Добавляем в начало списка посты, которые не добавили (id которых нет в PostOrder)
        //? Такого тоже не должно быть, просто "неидеальная" защита от бага
        localPosts.insertAll(
          0,
          postBox.values.where((post) => !localPosts.contains(post)),
        );
      }
    }

    log(
      'Read ${localPosts.length} posts from local DB',
      name: 'PostsBloc[_onInit]',
    );
    emit(state.copyWith(
      isInitialization: false,
      postList: localPosts,
    ));
  }

  Future<void> _onUpdate(_Update event, Emitter<PostsState> emit) async {
    try {
      if (state.isLoading) return;
      emit(state.copyWith(isUpdating: true, error: null));
      final newPostList = await _postRepository.getPosts();
      if (Config.fakeDelay) {
        await Future.delayed(const Duration(seconds: Config.fakeDelaySeconds));
      }
      log(
        'Got ${newPostList.length} posts',
        name: 'PostsBloc[_onUpdate]',
      );
      List<Post> posts = List.from(state.postList);
      await _handleNewPosts(posts, newPostList);
      emit(state.copyWith(
        isUpdating: false,
        postList: posts,
      ));
    } on ApiError catch (e) {
      log(
        'ApiError on update post: $e',
        name: 'PostsBloc[_onUpdate]',
      );
      String errorText;
      if (e is RequestError) {
        errorText = 'Ошибка запроса';
        if (e.errorCode != null) {
          errorText += '. Код: ${e.errorCode}';
        }
      } else {
        errorText = 'При обновлении постов произошла ошибка запроса';
      }
      emit(state.copyWith(
        isUpdating: false,
        error: errorText,
      ));
    } catch (e) {
      log(
        'Error on update post: $e',
        name: 'PostsBloc[_onUpdate]',
      );
      emit(state.copyWith(
        isUpdating: false,
        error: 'Произошла непредвиденная ошибка при обновлении постов',
      ));
    }
  }

  Future<void> _handleNewPosts(
    List<Post> oldPostList,
    List<Post> newPostList,
  ) async {
    //* Для отладки
    var changedPostsCount = 0;
    //*

    final postBox = Boxes.getPostBox();
    final postOrderBox = Boxes.getPostOrderBox();
    Map<String, Post> forUpdate = {};

    //? Ищем среди новых локальные посты и проверяем изменения
    for (var i = 0; i < oldPostList.length; i++) {
      final postId = oldPostList[i].id;
      final oldPostInNewList = newPostList.firstWhereOrNull(
        (post) => post.id == postId,
      );
      if (oldPostInNewList != null && oldPostList[i] != oldPostInNewList) {
        //***** Обновление картинки в хранилище
        String? cachedImagePath = oldPostList[i].cachedImagePath;
        //? Если картинка была, но пропала, нужно удалить из кеша
        if (oldPostList[i].hasImage && !oldPostInNewList.hasImage) {
          _cacheImages.deleteImageFromCache(postId);
        }
        //? Если картинка есть и она не равна старой(или ещё не записана) просто записать (перезаписать)
        if (oldPostInNewList.hasImage && oldPostList[i] != oldPostInNewList ||
            oldPostInNewList.hasImage &&
                !await _cacheImages.hasCachedImage(postId)) {
          cachedImagePath = await _cacheImages.cacheImage(
            postId,
            oldPostInNewList.imageUrl,
          );
          if (cachedImagePath == null) {
            log(
              'Failed to cache image(update), $postId, ${oldPostInNewList.imageUrl}',
              name: 'PostsBloc[_handleNewPosts]',
            );
          }
        }
        //*****
        oldPostList[i] =
            oldPostInNewList.copyWith(cachedImagePath: cachedImagePath);
        forUpdate[postId] = oldPostList[i];
        changedPostsCount++;
      }
    }
    //? Обновляем в бд
    await postBox.putAll(forUpdate);

    //? Ищем новые посты
    final localPostIdList = oldPostList.map((post) => post.id);
    final newPosts = newPostList
        .where((post) => !localPostIdList.contains(post.id))
        .toList();

    if (newPosts.isEmpty) return;

    //***** Кешируем картинки новых постов
    for (var i = 0; i < newPosts.length; i++) {
      if (newPosts[i].hasImage) {
        String? cachedImagePath = await _cacheImages.cacheImage(
          newPosts[i].id,
          newPosts[i].imageUrl,
        );
        newPosts[i] = newPosts[i].copyWith(cachedImagePath: cachedImagePath);
        if (cachedImagePath == null) {
          log(
            'Failed to cache image(new), ${newPosts[i].id}, ${newPosts[i].imageUrl}',
            name: 'PostsBloc[_handleNewPosts]',
          );
        }
      }
    }
    //*****

    //? Добавляем новые посты в начало списка старых
    oldPostList.insertAll(
      0,
      newPosts,
    );

    //? Добавляем новые посты в бд
    final newPostsMap = {for (var post in newPosts) post.id: post};
    await postBox.putAll(newPostsMap);
    //? Обновляем порядок постов в бд
    final newPostsOrderIdList = newPosts.map((post) => post.id).toList();
    if (postOrderBox.isEmpty) {
      await postOrderBox.put(0, PostOrder(orderIdList: newPostsOrderIdList));
    } else {
      var oldPostOrder = postOrderBox.getAt(0)!;
      oldPostOrder.orderIdList.insertAll(0, newPostsOrderIdList);
      await postOrderBox.putAt(0, oldPostOrder);
    }

    log(
      'Added ${newPosts.length} new posts, changed: $changedPostsCount',
      name: 'PostsBloc[_handleNewPosts]',
    );
  }
}
