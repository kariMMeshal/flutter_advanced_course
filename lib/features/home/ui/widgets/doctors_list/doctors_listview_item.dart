import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extensions.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/colors_manager.dart';
import '../../../../../core/theme/styles.dart';
import '../../../data/models/specializations_response_model.dart';

class DoctorsListviewItem extends StatelessWidget {
  final DoctorsModel? doctorsModel;
  const DoctorsListviewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.showDoctorScreen, arguemnts: doctorsModel);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Shimmer.fromColors(
                    baseColor: ColorsManager.lightGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      width: 110.w,
                      height: 130.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                errorWidget: (context, url, error) => Icon(Icons.error),
                width: 120.w,
                height: 140.h,
                fit: BoxFit.cover,
                imageUrl:
                    'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*',
              ),
            ),
            horizentalSpace(16.w),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr.${doctorsModel?.name ?? 'Name'}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font18DarkBlueBold,
                ),
                verticalSpace(5.h),
                Text(
                  '${doctorsModel?.degree ?? 'Deg'} | ${doctorsModel?.phone ?? '01507546513'}',
                  style: TextStyles.font12GreyRegular,
                ),
                verticalSpace(5.h),
                Text(
                  doctorsModel?.email ?? 'Email@email.com',
                  style: TextStyles.font12GreyRegular,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
