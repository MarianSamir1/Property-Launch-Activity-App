import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class YourClientsListWidget extends StatelessWidget {
  const YourClientsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: ColorManager.lightRedF8F,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomSvgPicture(
            svgImage: IconPathes.person,
            height: 15.r,
            width: 15.r,
          ),
          SizedBox(width: 7.w),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: "Ahmed Sami Mahmoud",
                        maxLines: 1,
                        textOverflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 5.h),
                      const CustomText(
                        text: "2 ${Constants.wishlists}",
                        color: ColorManager.grey828,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7.w),
                const CustomText(
                  text: "1- (1Pending )",
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
