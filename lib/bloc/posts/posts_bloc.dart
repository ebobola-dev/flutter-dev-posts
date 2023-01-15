import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/models/errors/api_error.dart';
import 'package:flutter_dev_posts/models/post/post.dart';
import 'package:flutter_dev_posts/repositories/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostRepository _postRepository;
  PostsBloc(this._postRepository) : super(const PostsState()) {
    on<_Init>(_onInit);
    on<_Update>(_onUpdate);

    add(const PostsEvent.init());
  }

  Future<void> _onInit(_Init event, Emitter<PostsState> emit) async {
    log(
      'initialization posts...',
      name: 'PostsBloc[_onInit]',
    );
    emit(state.copyWith(isInitialization: true, error: null));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isInitialization: false));
  }

  Future<void> _onUpdate(_Update event, Emitter<PostsState> emit) async {
    try {
      if (state.isLoading) return;
      emit(state.copyWith(isUpdating: true, error: null));
      final allPosts = await _postRepository.getPosts();
      final localPostIdList = state.postList.map((post) => post.id);
      final newPosts =
          allPosts.where((post) => !localPostIdList.contains(post.id)).toList();
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(
        isUpdating: false,
        postList: newPosts + state.postList,
      ));
      log(
        'Posts updated, got ${allPosts.length} posts, new: ${newPosts.length}',
        name: 'PostsBloc[_onUpdate]',
      );
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
}
