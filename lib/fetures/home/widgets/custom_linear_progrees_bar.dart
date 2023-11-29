import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class CustomLinearProgressBar extends StatelessWidget {
  final String progressTitle;
  final int totalProgress;
  final int currentProgress;
  const CustomLinearProgressBar({
    super.key,
    required this.progressTitle,
    required this.totalProgress,
    required this.currentProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: ColorManager.lightRedF8F,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //====================== progress title ==========================
          CustomText(
            text: progressTitle,
            fontWeight: FontWeight.w500,
          ),
          //====================== 18/22 count ==========================
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "$currentProgress",
                      style: TextStyle(
                        color: ColorManager.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: FontManager.font16.sp,
                        fontFamily: Constants.fontFamily,
                      ),
                    ),
                    TextSpan(
                      text: "/$totalProgress",
                      style: TextStyle(
                        color: ColorManager.grey828,
                        fontWeight: FontWeight.w500,
                        fontSize: FontManager.font16.sp,
                        fontFamily: Constants.fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          //====================== Linear Progress Bar ==========================
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: LinearProgressBar(
              maxSteps: totalProgress,
              progressType: LinearProgressBar.progressTypeLinear,
              currentStep: currentProgress,
              progressColor: ColorManager.primaryColor,
              backgroundColor: ColorManager.lightGreyE0E0,
              minHeight: 3.h,
            ),
          ),
        ],
      ),
    );
  }
}
