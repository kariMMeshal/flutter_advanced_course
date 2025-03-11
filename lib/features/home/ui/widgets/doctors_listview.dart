import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_listview_item.dart';

class DoctorsListview extends StatelessWidget {
  final List<Doctors?> doctorsList;
  const DoctorsListview({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: doctorsList.length,
      itemBuilder: (context, index) {
        return DoctorsListviewItem(doctorsModel: doctorsList[index]);
      },
    ));
  }
}
