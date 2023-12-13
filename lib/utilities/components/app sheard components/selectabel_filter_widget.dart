import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class SelectableFilterWidget extends StatelessWidget {
  final String containerTitle;
  final Function() onTap;
  final int currentIndex;
  final int containerIndex;
  const SelectableFilterWidget({
    super.key,
    required this.containerTitle,
    required this.onTap,
    required this.currentIndex,
    required this.containerIndex,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(4.r),
      splashColor:ColorManager.white  ,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 16.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: currentIndex == containerIndex
                //condition based on witch is select
                ? ColorManager.primaryColor
                : ColorManager.lightGreyE0E0,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: CustomText(
          text: containerTitle,
          textAlign: TextAlign.center,
          color: currentIndex == containerIndex
              //condition based on witch is select
              ? ColorManager.primaryColor
              : ColorManager.grey828,
          fontSize: FontManager.font16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
