// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'thumbnail')
  String get imageUrl => throw _privateConstructorUsedError;
  @HiveField(3)
  int get ups => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'selftext')
  String get text => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get cachedImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) @JsonKey(name: 'thumbnail') String imageUrl,
      @HiveField(3) int ups,
      @HiveField(4) @JsonKey(name: 'selftext') String text,
      @HiveField(5) String? cachedImagePath});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? ups = null,
    Object? text = null,
    Object? cachedImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ups: null == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      cachedImagePath: freezed == cachedImagePath
          ? _value.cachedImagePath
          : cachedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) @JsonKey(name: 'thumbnail') String imageUrl,
      @HiveField(3) int ups,
      @HiveField(4) @JsonKey(name: 'selftext') String text,
      @HiveField(5) String? cachedImagePath});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? ups = null,
    Object? text = null,
    Object? cachedImagePath = freezed,
  }) {
    return _then(_$_Post(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ups: null == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      cachedImagePath: freezed == cachedImagePath
          ? _value.cachedImagePath
          : cachedImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  _$_Post(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) @JsonKey(name: 'thumbnail') required this.imageUrl,
      @HiveField(3) required this.ups,
      @HiveField(4) @JsonKey(name: 'selftext') required this.text,
      @HiveField(5) this.cachedImagePath})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: 'thumbnail')
  final String imageUrl;
  @override
  @HiveField(3)
  final int ups;
  @override
  @HiveField(4)
  @JsonKey(name: 'selftext')
  final String text;
  @override
  @HiveField(5)
  final String? cachedImagePath;

  @override
  String toString() {
    return 'Post(id: $id, title: $title, imageUrl: $imageUrl, ups: $ups, text: $text, cachedImagePath: $cachedImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.ups, ups) || other.ups == ups) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.cachedImagePath, cachedImagePath) ||
                other.cachedImagePath == cachedImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, imageUrl, ups, text, cachedImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  factory _Post(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) @JsonKey(name: 'thumbnail') required final String imageUrl,
      @HiveField(3) required final int ups,
      @HiveField(4) @JsonKey(name: 'selftext') required final String text,
      @HiveField(5) final String? cachedImagePath}) = _$_Post;
  _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  @JsonKey(name: 'thumbnail')
  String get imageUrl;
  @override
  @HiveField(3)
  int get ups;
  @override
  @HiveField(4)
  @JsonKey(name: 'selftext')
  String get text;
  @override
  @HiveField(5)
  String? get cachedImagePath;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
