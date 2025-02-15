import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';
import 'package:flutter_advanced_course/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter_advanced_course/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter_advanced_course/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 10.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage all of your medical appointments easily with Docdoc and get a new experience",
                        textAlign: TextAlign.center,
                        style: Styles.font13GreyRegular,
                      ),
                      SizedBox(height: 10.h),
                      GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
