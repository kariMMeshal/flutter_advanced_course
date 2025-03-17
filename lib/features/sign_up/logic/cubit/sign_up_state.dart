import 'package:flutter_advanced_course/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.signUpInitial() = _SignUpInitial;
  const factory SignUpState.signUpLoading() = SignUpLoading;
  const factory SignUpState.signUpSuccess(T data) = SignUpSuccess<T>;
  const factory SignUpState.signUpError(ApiErrorModel apiErrorModel) = SignUpError;
}
