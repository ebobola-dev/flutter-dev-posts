import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_event.dart';
import 'package:flutter_dev_posts/bloc/posts/posts_state.dart';
import 'package:flutter_dev_posts/repositories/post_repository.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostRepository _postRepository;
  PostsBloc(this._postRepository) : super(PostsState()) {
    on<PostsEvent>((event, emit) {
      event.when(
        init: () {
          log('initialization posts...');
        },
        update: () async {
          try {
            emit(state.copyWith(isUpdating: true, error: null));
            final allPosts = await _postRepository.getPosts();
            final localPostIdList = state.postList.map((post) => post.id);
            final newPosts = allPosts
                .where((post) => !localPostIdList.contains(post.id))
                .toList();
            emit(state.copyWith(
              isUpdating: false,
              postList: newPosts + state.postList,
            ));
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
        },
      );
    });

    add(const PostsEvent.init());
  }
}
