import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class UnitListTile extends StatelessWidget {
  const UnitListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: "02/002-0D",
              fontWeight: FontWeight.w500,
              color: ColorManager.black.withOpacity(0.5),
            ),
            const CustomText(
              text: "3 Wished for",
              fontWeight: FontWeight.w500,
            )
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            const CustomText(
              text: "200 m2",
              fontWeight: FontWeight.w500,
            ),
            SizedBox(width: 8.w),
            const CustomText(
              text: "Villa",
              color: ColorManager.primaryColor,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Expanded(
              child: CustomText(
                text: "Palm Park Project",
                fontWeight: FontWeight.w500,
                fontSize: FontManager.font18,
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
            const CustomText(
              text: "Fully Finished",
              fontWeight: FontWeight.w500,
              color: ColorManager.green,
            )
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today_outlined,
              color: ColorManager.grey828,
              size: 17.r,
            ),
            SizedBox(width: 20.w),
            CustomText(
              text: "12/1/2024",
              fontWeight: FontWeight.w500,
              color: ColorManager.black.withOpacity(0.5),
            ),
            const Spacer(),
            const CustomText(
              text: "\$14,816,000",
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ],
    );
  }
}
