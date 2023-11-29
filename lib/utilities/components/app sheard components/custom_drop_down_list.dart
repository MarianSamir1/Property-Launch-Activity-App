import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class CustomDropDownList extends StatelessWidget {
  final String hint;
  final Function()? onOpenTap;
  const CustomDropDownList({super.key, required this.hint, this.onOpenTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onOpenTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: ColorManager.lightGreyE0E0,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: hint,
              color: Colors.grey,
              fontSize: FontManager.font15,
              fontWeight: FontWeight.w500,
            ),
            CustomSvgPicture(
              svgImage: IconPathes.bottomArrow,
              height: 8.r,
              width: 8.r,
            )
          ],
        ),
      ),
    );
  }
}
