import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theme/colors_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final Color? backGroundColor;
  final double? borderRadius;
  final double? horizentalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onpressed;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backGroundColor,
      this.horizentalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      required this.textStyle,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.0)),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backGroundColor ?? ColorsManager.mainBlue,
        ),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
          horizontal: horizentalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        )),
        fixedSize: WidgetStatePropertyAll(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 60.h),
        ),
      ),
      onPressed: onpressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
