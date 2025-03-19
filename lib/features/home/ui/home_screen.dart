import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_specialty_see_all.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/home_top_bar.dart';

import 'widgets/doctors_list/doctors_bloc_builder.dart';
import 'widgets/specialization_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              DoctorsBlueContainer(),
              verticalSpace(24),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              SpecializationsBlocBuilder(),
              verticalSpace(6),
              DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
