part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.init() = _Init;
  const factory PostsEvent.update() = _Update;
}
