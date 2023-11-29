import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';
import '../constants/icons_pathes.dart';
import '../styles/colors.dart';

openBottomSheet(context,
    {required String bottomSheetHeader, required Widget widget}) {
  showModalBottomSheet<void>(
    isScrollControlled: true, //set true
    backgroundColor: ColorManager.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 0.52.sh,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: bottomSheetHeader,
                  fontSize: FontManager.font16,
                  fontWeight: FontWeight.bold,
                ),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    Navigator.pop(context);
                  },
                  child: const CustomSvgPicture(
                    svgImage: IconPathes.closeIcon,
                    color: ColorManager.black1919,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            //====================== widget =================
            widget,
          ],
        ),
      );
    },
  );
}
