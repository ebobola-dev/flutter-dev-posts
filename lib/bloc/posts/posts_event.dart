part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.init() = _InitEvent;
  const factory PostsEvent.update() = _UpdateEvent;
}
