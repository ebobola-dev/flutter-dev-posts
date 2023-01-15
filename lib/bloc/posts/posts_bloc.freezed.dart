// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

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
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_UpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UpdateEvent value)? update,
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
abstract class _$$_InitEventCopyWith<$Res> {
  factory _$$_InitEventCopyWith(
          _$_InitEvent value, $Res Function(_$_InitEvent) then) =
      __$$_InitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitEventCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$_InitEvent>
    implements _$$_InitEventCopyWith<$Res> {
  __$$_InitEventCopyWithImpl(
      _$_InitEvent _value, $Res Function(_$_InitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitEvent implements _InitEvent {
  const _$_InitEvent();

  @override
  String toString() {
    return 'PostsEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitEvent);
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
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitEvent implements PostsEvent {
  const factory _InitEvent() = _$_InitEvent;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$_UpdateEvent>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateEvent implements _UpdateEvent {
  const _$_UpdateEvent();

  @override
  String toString() {
    return 'PostsEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateEvent);
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
    required TResult Function(_InitEvent value) init,
    required TResult Function(_UpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitEvent value)? init,
    TResult? Function(_UpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitEvent value)? init,
    TResult Function(_UpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements PostsEvent {
  const factory _UpdateEvent() = _$_UpdateEvent;
}

/// @nodoc
mixin _$PostsState {
  List<Post> get postList => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool get isInitialization => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call(
      {List<Post> postList,
      bool isUpdating,
      bool isInitialization,
      String? error});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
    Object? isUpdating = null,
    Object? isInitialization = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialization: null == isInitialization
          ? _value.isInitialization
          : isInitialization // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsStateCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$_PostsStateCopyWith(
          _$_PostsState value, $Res Function(_$_PostsState) then) =
      __$$_PostsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Post> postList,
      bool isUpdating,
      bool isInitialization,
      String? error});
}

/// @nodoc
class __$$_PostsStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$_PostsState>
    implements _$$_PostsStateCopyWith<$Res> {
  __$$_PostsStateCopyWithImpl(
      _$_PostsState _value, $Res Function(_$_PostsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
    Object? isUpdating = null,
    Object? isInitialization = null,
    Object? error = freezed,
  }) {
    return _then(_$_PostsState(
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      isUpdating: null == isUpdating
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialization: null == isInitialization
          ? _value.isInitialization
          : isInitialization // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostsState extends _PostsState {
  _$_PostsState(
      {final List<Post> postList = const [],
      this.isUpdating = false,
      this.isInitialization = false,
      this.error = null})
      : _postList = postList,
        super._();

  final List<Post> _postList;
  @override
  @JsonKey()
  List<Post> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  @JsonKey()
  final bool isUpdating;
  @override
  @JsonKey()
  final bool isInitialization;
  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'PostsState(postList: $postList, isUpdating: $isUpdating, isInitialization: $isInitialization, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsState &&
            const DeepCollectionEquality().equals(other._postList, _postList) &&
            (identical(other.isUpdating, isUpdating) ||
                other.isUpdating == isUpdating) &&
            (identical(other.isInitialization, isInitialization) ||
                other.isInitialization == isInitialization) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_postList),
      isUpdating,
      isInitialization,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsStateCopyWith<_$_PostsState> get copyWith =>
      __$$_PostsStateCopyWithImpl<_$_PostsState>(this, _$identity);
}

abstract class _PostsState extends PostsState {
  factory _PostsState(
      {final List<Post> postList,
      final bool isUpdating,
      final bool isInitialization,
      final String? error}) = _$_PostsState;
  _PostsState._() : super._();

  @override
  List<Post> get postList;
  @override
  bool get isUpdating;
  @override
  bool get isInitialization;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PostsStateCopyWith<_$_PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}
