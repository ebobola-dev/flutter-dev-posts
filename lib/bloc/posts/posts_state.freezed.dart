// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
