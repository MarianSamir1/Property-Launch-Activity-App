import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const CustomButton({super.key, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            border: Border.all(color: ColorManager.primaryColor)),
        child: CustomText(
          text: buttonText,
          textAlign: TextAlign.center,
          color: ColorManager.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
