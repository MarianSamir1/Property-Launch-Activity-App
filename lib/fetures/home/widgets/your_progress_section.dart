import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/home/widgets/custom_linear_progrees_bar.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

class YourProgressSection extends StatelessWidget {
  const YourProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        //====================== Your Progress title =======================
        const CustomText(
          text: Constants.yourProgress,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10.h),
        //===================== participating clients ========================
        const CustomLinearProgressBar(
          progressTitle: Constants.participatingClients,
          totalProgress: 22,
          currentProgress: 18,
        ),
        SizedBox(height: 10.h),
        //===================== managed Wish-List ========================
        const CustomLinearProgressBar(
          progressTitle: Constants.managedWishList,
          totalProgress: 26,
          currentProgress: 19,
        ),
        SizedBox(height: 10.h),
        //===================== wished For Units ========================
        const CustomLinearProgressBar(
          progressTitle: Constants.wishedForUnits,
          totalProgress: 41,
          currentProgress: 14,
        ),
      ],
    );
  }
}
