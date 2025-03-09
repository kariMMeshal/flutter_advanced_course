import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'By loggin , you agree to our',
          style: TextStyles.font14GreyRegular,
        ),
        TextSpan(
          text: ' Terms & Conditions ',
          style: TextStyles.font14DarkBlueMedium,
        ),
        TextSpan(
          text: ' and ',
          style: TextStyles.font14GreyRegular.copyWith(height: 1.5),
        ),
        TextSpan(
          text: 'Privacy Policy',
          style: TextStyles.font14DarkBlueMedium,
        ),
      ]),
    );
  }
}
