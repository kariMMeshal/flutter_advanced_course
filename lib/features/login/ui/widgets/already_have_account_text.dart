import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an accout',
          style: Styles.font14GreyRegular,
        ),
        TextSpan(
          text: ' Sign in ',
          style: Styles.font14BlueSemiBold,
        ),
      ]),
    );
  }
}
