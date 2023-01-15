part of 'posts_bloc.dart';

//? Opt. 1
@freezed
class PostsState with _$PostsState {
  const PostsState._();

  const factory PostsState({
    @Default([]) final List<Post> postList,
    @Default(false) final bool isUpdating,
    @Default(false) final bool isInitialization,
    @Default(null) final String? error,
  }) = _PostsState;

  bool get isLoading => isInitialization || isUpdating;

  Post? getPostWithId(String id) =>
      postList.firstWhereOrNull((post) => post.id == id);
}


//? Opt. 2
//? Позволит нам в виджетах обращаться к стейту через .when(), код будет удобнее и красивее(в виджетах),
//? но в блоке придётся каждый раз копировать один и тот же список постов (чтобы локальные посты были видны при любом состоянии)
//? я пока не знаю насколько этот вариант медленнее и хуже, и хуже ли вообще
// @freezed
// class PostsState with _$PostsState {
//   const factory PostsState.initialization() = _Initialization;

//   const factory PostsState.ready([@Default([]) final List<Post> postList]) =
//       _Initializated;

//   const factory PostsState.updating([@Default([]) final List<Post> postList]) =
//       _Updating;

//   const factory PostsState.error(String error,
//       [@Default([]) final List<Post> postList]) = _Error;
// }
