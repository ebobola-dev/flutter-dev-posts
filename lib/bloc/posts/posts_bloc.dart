import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/models/post.dart';
import 'package:flutter_dev_posts/repositories/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostRepository _postRepository;
  PostsBloc(this._postRepository) : super(PostsState()) {
    on<_InitEvent>(_onInit);
    on<_UpdateEvent>(_onUpdate);

    add(const PostsEvent.init());
  }

  Future<void> _onInit(_InitEvent event, Emitter<PostsState> emit) async {
    log('initialization posts...');
    emit(state.copyWith(isInitialization: true, error: null));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isInitialization: false));
  }

  Future<void> _onUpdate(_UpdateEvent event, Emitter<PostsState> emit) async {
    try {
      emit(state.copyWith(isUpdating: true, error: null));
      final allPosts = await _postRepository.getPosts();
      final localPostIdList = state.postList.map((post) => post.id);
      final newPosts =
          allPosts.where((post) => !localPostIdList.contains(post.id)).toList();
      emit(state.copyWith(
        isUpdating: false,
        postList: newPosts + state.postList,
      ));
      log(
        'Posts updated, got ${allPosts.length} posts, new: ${newPosts.length}',
        name: 'PostsBloc[on update]',
      );
    } catch (e) {
      log(
        'Error on update post: $e',
        name: 'PostsBloc[on update]',
      );
      emit(state.copyWith(
        isUpdating: false,
        error: 'Произошла какая-то ошибка при обновлении постов',
      ));
    }
  }
}
