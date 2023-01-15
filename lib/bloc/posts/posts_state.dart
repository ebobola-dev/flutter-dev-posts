part of 'posts_bloc.dart';

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
