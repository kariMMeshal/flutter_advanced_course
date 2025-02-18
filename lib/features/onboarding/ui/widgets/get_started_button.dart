import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extensions.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/core/theme/colors_manager.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Text(
          "Get Started",
          style: Styles.font16WhiteSemiBold,
        ));
  }
}
