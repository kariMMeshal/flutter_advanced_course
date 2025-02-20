import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_course/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_advanced_course/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advanced_course/features/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:flutter_advanced_course/features/sign_up/ui/widgets/sign_up_bloc_listner.dart';
import 'package:flutter_advanced_course/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account", style: Styles.font24BlueBold),
              verticalSpace(8),
              Text(
                'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                style: Styles.font14GreyRegular,
              ),
              verticalSpace(36),
              SignUpForm(),
              verticalSpace(24),
              AppTextButton(
                buttonText: 'Create Account',
                textStyle: Styles.font16WhiteSemiBold,
                onpressed: () {
                  validateThenSignUp(context);
                },
              ),
              verticalSpace(16),
              TermsAndConditionsText(),
              verticalSpace(16),
              const AlreadyHaveAccountText(),
              const SignUpBlocListner(),
            ],
          ),
        ),
      ),
    ));
  }
}

void validateThenSignUp(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().emitSignUpStates();
  }
}
