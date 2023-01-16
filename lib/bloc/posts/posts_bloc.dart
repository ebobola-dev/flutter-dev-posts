import 'dart:developer';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/hive/boxes.dart';
import 'package:flutter_dev_posts/models/errors/api_error.dart';
import 'package:flutter_dev_posts/models/post/post.dart';
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
    log(
      'Read ${postBox.values.length} posts from local DB',
      name: 'PostsBloc[_onInit]',
    );
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(
      isInitialization: false,
      postList: postBox.values.toList(),
    ));
  }

  Future<void> _onUpdate(_Update event, Emitter<PostsState> emit) async {
    try {
      if (state.isLoading) return;
      emit(state.copyWith(isUpdating: true, error: null));
      final newPostList = await _postRepository.getPosts();
      log(
        'Got ${newPostList.length} posts',
        name: 'PostsBloc[_onUpdate]',
      );
      List<Post> posts = List.from(state.postList);
      await _handleNewPosts(posts, newPostList);
      await Future.delayed(const Duration(seconds: 3));
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
    Map<String, Post> forUpdate = {};

    //? Ищем среди новых локальные посты и проверяем изменения
    for (var i = 0; i < oldPostList.length; i++) {
      final oldPostInNewList = newPostList.firstWhereOrNull(
        (post) => post.id == oldPostList[i].id,
      );
      if (oldPostInNewList != null && oldPostList[i] != oldPostInNewList) {
        //***** Обновление картинки в хранилище
        String? cachedImagePath = oldPostList[i].cachedImagePath;
        //? Если картинка была, но пропала, нужно удалить из кеша
        if (oldPostList[i].hasImage && !oldPostInNewList.hasImage) {
          _cacheImages.deleteImageFromCache(oldPostInNewList.id);
        }
        //? Если картинка есть и она не равна старой(или ещё не записана) просто записать (перезаписать)
        if (oldPostInNewList.hasImage && oldPostList[i] != oldPostInNewList ||
            oldPostInNewList.hasImage &&
                !await _cacheImages.hasCachedImage(oldPostInNewList.id)) {
          cachedImagePath = await _cacheImages.cacheImage(
            oldPostInNewList.id,
            oldPostInNewList.imageUrl,
          );
          if (cachedImagePath == null) {
            log(
              'Failed to cache image(update), ${oldPostInNewList.id}, ${oldPostInNewList.imageUrl}',
              name: 'PostsBloc[_handleNewPosts]',
            );
          }
        }
        //*****
        oldPostList[i] =
            oldPostInNewList.copyWith(cachedImagePath: cachedImagePath);
        forUpdate[oldPostInNewList.id] = oldPostList[i];
        changedPostsCount++;
      }
    }
    //? Обновляем в бд
    await postBox.putAll(forUpdate);

    //? Добавляем в начало списка все новые посты, которых ещё не было
    final localPostIdList = oldPostList.map((post) => post.id);
    final newPosts = newPostList
        .where((post) => !localPostIdList.contains(post.id))
        .toList();

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
    oldPostList.insertAll(
      0,
      newPosts,
    );

    //? Добавляем новые посты в бд
    final newPostsMap = {for (var post in newPosts) post.id: post};
    await postBox.putAll(newPostsMap);

    log(
      'Added ${newPosts.length} new posts, changed: $changedPostsCount',
      name: 'PostsBloc[_handleNewPosts]',
    );
  }
}
