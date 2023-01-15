// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(UpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res, PostsEvent>;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res, $Val extends PostsEvent>
    implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitEventCopyWith<$Res> {
  factory _$$InitEventCopyWith(
          _$InitEvent value, $Res Function(_$InitEvent) then) =
      __$$InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitEventCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$InitEvent>
    implements _$$InitEventCopyWith<$Res> {
  __$$InitEventCopyWithImpl(
      _$InitEvent _value, $Res Function(_$InitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitEvent implements InitEvent {
  const _$InitEvent();

  @override
  String toString() {
    return 'PostsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() update,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? update,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(UpdateEvent value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(UpdateEvent value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitEvent implements PostsEvent {
  const factory InitEvent() = _$InitEvent;
}

/// @nodoc
abstract class _$$UpdateEventCopyWith<$Res> {
  factory _$$UpdateEventCopyWith(
          _$UpdateEvent value, $Res Function(_$UpdateEvent) then) =
      __$$UpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateEventCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$UpdateEvent>
    implements _$$UpdateEventCopyWith<$Res> {
  __$$UpdateEventCopyWithImpl(
      _$UpdateEvent _value, $Res Function(_$UpdateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateEvent implements UpdateEvent {
  const _$UpdateEvent();

  @override
  String toString() {
    return 'PostsEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitEvent value) init,
    required TResult Function(UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitEvent value)? init,
    TResult? Function(UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitEvent value)? init,
    TResult Function(UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements PostsEvent {
  const factory UpdateEvent() = _$UpdateEvent;
}
