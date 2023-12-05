import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class VillaOrFlatWidget extends StatelessWidget {
  final String containerTitle;
  final Function() onTap;
  final String currentValue;
  const VillaOrFlatWidget({
    super.key,
    required this.containerTitle,
    required this.onTap,
    required this.currentValue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50.r),
      onTap: onTap,
      child: Container(
        width: 86.w,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: currentValue == containerTitle
              ? ColorManager.primaryColor
              : ColorManager.white,
          border: Border.all(
            color: ColorManager.primaryColor,
          ),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: CustomText(
          text: containerTitle,
          textAlign: TextAlign.center,
          color: currentValue == containerTitle
              //condition based on witch is select
              ? ColorManager.white
              : ColorManager.primaryColor,
          fontSize: FontManager.font18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
