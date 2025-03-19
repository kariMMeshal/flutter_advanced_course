import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helpers/extensions.dart';
import 'package:flutter_advanced_course/core/theme/colors_manager.dart';
import 'package:flutter_advanced_course/core/theme/styles.dart';

class ShowDoctorAppbar extends StatelessWidget {
  const ShowDoctorAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: ColorsManager.lighterGrey),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
          ),
          Text(
            "Doctor's Name",
            style: TextStyles.font18DarkBlueBold,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: ColorsManager.lighterGrey),
                borderRadius: BorderRadius.circular(16)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
