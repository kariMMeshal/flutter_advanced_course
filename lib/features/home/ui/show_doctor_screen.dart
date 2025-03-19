import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/show_doctor_list/doctors_info.dart';

import '../data/models/specializations_response_model.dart';
import 'widgets/show_doctor_list/show_doctor_appbar.dart';

class ShowDoctorScreen extends StatelessWidget {
  final DoctorsModel doctorsModel;
  const ShowDoctorScreen({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ShowDoctorAppbar(),
              verticalSpace(32),
              DoctorsInfo(doctorsModel: doctorsModel),
            ],
          ),
        ),
      ),
    );
  }
}
