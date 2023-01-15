import 'package:flutter_dev_posts/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const PostsState._();

  factory PostsState({
    @Default([]) final List<Post> postList,
    @Default(false) final bool isUpdating,
    @Default(false) final bool isInitialization,
    @Default(null) final String? error,
  }) = _PostsState;
}
