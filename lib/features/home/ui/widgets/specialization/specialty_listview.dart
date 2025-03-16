import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_advanced_course/features/home/logic/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'specialiaty_listview_item.dart';

class SpecialtyListview extends StatefulWidget {
  final List<SpecializationsData?> specializationsDataList;
  const SpecialtyListview({super.key, required this.specializationsDataList});

  @override
  State<SpecialtyListview> createState() => _SpecialtyListviewState();
}

class _SpecialtyListviewState extends State<SpecialtyListview> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationsDataList[index]!.id);
            },
            child: SpecialiatyListviewItem(
              specializationsData: widget.specializationsDataList[index],
              index: index,
              selectedIndex: selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
