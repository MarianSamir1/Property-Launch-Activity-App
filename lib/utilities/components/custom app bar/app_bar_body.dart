import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class ScreensAppBarBody extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const ScreensAppBarBody({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 35.h, bottom: 32.h, left: 20.w, right: 25.w),
      width: double.infinity,
      color: ColorManager.black1919,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap ?? () => Navigator.pop(context),
            child: const CustomSvgPicture(
              svgImage: IconPathes.backButton,
            ),
          ),
          SizedBox(width: 10.w),
          CustomText(
            text: title,
            color: ColorManager.white,
            fontWeight: FontWeight.bold,
            fontSize: FontManager.font17,
          ),
          const Spacer(),
          const CustomSvgPicture(svgImage: IconPathes.notification)
        ],
      ),
    );
  }
}
