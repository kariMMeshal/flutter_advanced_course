import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors_manager.dart';
import '../../../../core/theme/styles.dart';

class DoctorsSpecialiatyListviewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int index;
  const DoctorsSpecialiatyListviewItem(
      {super.key, this.specializationsData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              fit: BoxFit.cover,
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(specializationsData?.name??"Specialization", style: TextStyles.font12DarkBlueRegular)
        ],
      ),
    );
  }
}
