import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/constants.dart';
import 'package:flutter_advanced_course/core/helpers/shared_pref_helper.dart';
import 'package:flutter_advanced_course/features/login/data/models/login_request_body.dart';
import 'package:flutter_advanced_course/features/login/data/repos/login_repo.dart';
import 'package:flutter_advanced_course/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/dio_factory.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text.trim().toLowerCase(),
        password: passwordController.text.trim(),
      ),
    );

    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginError(apiErrorModel));
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
