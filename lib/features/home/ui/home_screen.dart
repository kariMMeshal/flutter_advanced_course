import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_specialty_see_all.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/specializations_and_doctors_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18.h),
              SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
