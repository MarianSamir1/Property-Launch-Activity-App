import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class LaunchAndProjectNameWidget extends StatelessWidget {
  const LaunchAndProjectNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //================= project name =============
        Column(
          children: [
            SizedBox(height: 15.h),
            CustomText(
              text: "Palm Park",
              fontSize: FontManager.font18,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        //================= Launch Widget ======================
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorManager.lightGreenE8F,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
          ),
          child: const CustomText(
            text: Constants.launch,
            color: ColorManager.green,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
