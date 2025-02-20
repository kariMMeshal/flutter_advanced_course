import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an accout?',
          style: Styles.font14GreyRegular,
        ),
        TextSpan(
          text: ' Sign Up ',
          style: Styles.font14BlueSemiBold,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pushNamed(Routes.signUpScreen);
            },
        ),
      ]),
    );
  }
}
