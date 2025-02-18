import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';
import 'package:flutter_advanced_course/core/widgets/app_text_button.dart';
import 'package:flutter_advanced_course/core/widgets/app_text_form_field.dart';
import 'package:flutter_advanced_course/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced_course/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LoginScreen", style: Styles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: "Email"),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            isObscureText = !isObscureText;
                          }),
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: Styles.font14BlueSemiBold,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: Styles.font16WhiteSemiBold,
                        onpressed: () {},
                      ),
                      verticalSpace(16),
                      TermsAndConditionsText(),
                      verticalSpace(15),
                      AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
