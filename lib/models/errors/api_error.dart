import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError {
  const factory ApiError.unhandledError(String errorText) = UnhandledError;
  const factory ApiError.requestError([int? errorCode]) = RequestError;
}
