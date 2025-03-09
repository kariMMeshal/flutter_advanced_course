import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';

class DoctorsListview extends StatelessWidget {
  const DoctorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  width: 110.w,
                  height: 120.h,
                  'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*',
                  fit: BoxFit.cover,
                ),
              ),
              horizentalSpace(16.w),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr.Name",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font18DarkBlueBold,
                  ),
                  verticalSpace(5.h),
                  Text(
                    'Degree | 015078568523',
                    style: TextStyles.font12GreyRegular,
                  ),
                  verticalSpace(5.h),
                  Text(
                    'Email@gmail.com',
                    style: TextStyles.font12GreyRegular,
                  ),
                ],
              ))
            ],
          ),
        );
      },
    ));
  }
}
