import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extensions.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an accout?',
          style: Styles.font14GreyRegular,
        ),
        TextSpan(
          text: ' Sign In ',
          style: Styles.font14BlueSemiBold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushNamed(Routes.loginScreen);
            },
        ),
      ]),
    );
  }
}
