// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) unhandledError,
    required TResult Function(int? errorCode) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorText)? unhandledError,
    TResult? Function(int? errorCode)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? unhandledError,
    TResult Function(int? errorCode)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnhandledError value) unhandledError,
    required TResult Function(RequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnhandledError value)? unhandledError,
    TResult? Function(RequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnhandledError value)? unhandledError,
    TResult Function(RequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnhandledErrorCopyWith<$Res> {
  factory _$$UnhandledErrorCopyWith(
          _$UnhandledError value, $Res Function(_$UnhandledError) then) =
      __$$UnhandledErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$UnhandledErrorCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$UnhandledError>
    implements _$$UnhandledErrorCopyWith<$Res> {
  __$$UnhandledErrorCopyWithImpl(
      _$UnhandledError _value, $Res Function(_$UnhandledError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$UnhandledError(
      null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnhandledError implements UnhandledError {
  const _$UnhandledError(this.errorText);

  @override
  final String errorText;

  @override
  String toString() {
    return 'ApiError.unhandledError(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnhandledError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnhandledErrorCopyWith<_$UnhandledError> get copyWith =>
      __$$UnhandledErrorCopyWithImpl<_$UnhandledError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) unhandledError,
    required TResult Function(int? errorCode) requestError,
  }) {
    return unhandledError(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorText)? unhandledError,
    TResult? Function(int? errorCode)? requestError,
  }) {
    return unhandledError?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? unhandledError,
    TResult Function(int? errorCode)? requestError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnhandledError value) unhandledError,
    required TResult Function(RequestError value) requestError,
  }) {
    return unhandledError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnhandledError value)? unhandledError,
    TResult? Function(RequestError value)? requestError,
  }) {
    return unhandledError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnhandledError value)? unhandledError,
    TResult Function(RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(this);
    }
    return orElse();
  }
}

abstract class UnhandledError implements ApiError {
  const factory UnhandledError(final String errorText) = _$UnhandledError;

  String get errorText;
  @JsonKey(ignore: true)
  _$$UnhandledErrorCopyWith<_$UnhandledError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestErrorCopyWith<$Res> {
  factory _$$RequestErrorCopyWith(
          _$RequestError value, $Res Function(_$RequestError) then) =
      __$$RequestErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({int? errorCode});
}

/// @nodoc
class __$$RequestErrorCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$RequestError>
    implements _$$RequestErrorCopyWith<$Res> {
  __$$RequestErrorCopyWithImpl(
      _$RequestError _value, $Res Function(_$RequestError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = freezed,
  }) {
    return _then(_$RequestError(
      freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RequestError implements RequestError {
  const _$RequestError([this.errorCode]);

  @override
  final int? errorCode;

  @override
  String toString() {
    return 'ApiError.requestError(errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestError &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorCopyWith<_$RequestError> get copyWith =>
      __$$RequestErrorCopyWithImpl<_$RequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorText) unhandledError,
    required TResult Function(int? errorCode) requestError,
  }) {
    return requestError(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorText)? unhandledError,
    TResult? Function(int? errorCode)? requestError,
  }) {
    return requestError?.call(errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorText)? unhandledError,
    TResult Function(int? errorCode)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnhandledError value) unhandledError,
    required TResult Function(RequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnhandledError value)? unhandledError,
    TResult? Function(RequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnhandledError value)? unhandledError,
    TResult Function(RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class RequestError implements ApiError {
  const factory RequestError([final int? errorCode]) = _$RequestError;

  int? get errorCode;
  @JsonKey(ignore: true)
  _$$RequestErrorCopyWith<_$RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}
