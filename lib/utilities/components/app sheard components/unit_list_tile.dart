import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class UnitListTile extends StatelessWidget {
  const UnitListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "02/002-0D",
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 3.h),
            const CustomText(
              text: "\$14,816,000",
              color: ColorManager.grey828,
            )
          ],
        ),
        const CustomText(
          text: "3 Reserved",
          color: ColorManager.primaryColor,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }
}
