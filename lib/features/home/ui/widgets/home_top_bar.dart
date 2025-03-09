import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theme/colors_manager.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Kareem!", style: TextStyles.font18DarkBlueBold),
            Text("How are you today", style: TextStyles.font12GreyRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.lightestGrey,
          child: SvgPicture.asset('assets/images/Notification_Button.svg'),
        )
      ],
    );
  }
}
