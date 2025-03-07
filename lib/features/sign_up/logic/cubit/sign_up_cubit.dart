import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:flutter_advanced_course/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_advanced_course/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(SignUpRequestBody(
        email: emailController.text.trim().toLowerCase(),
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
        name: nameController.text.trim(),
        phone: phoneController.text));

    response.when(
      success: (loginResponse) {
        emit(SignUpState.success(loginResponse));
      },
      failure: (error) {
        emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
