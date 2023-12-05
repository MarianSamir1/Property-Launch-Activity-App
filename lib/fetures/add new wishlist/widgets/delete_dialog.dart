import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

import '../../../utilities/components/custom buttons/custom_button.dart';

class DiscardWishlistDialog extends StatelessWidget {
  final Function() onDelete;
  const DiscardWishlistDialog({
    super.key,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.delete_outline_outlined,
          color: ColorManager.red,
          size: 45.r,
        ),
        SizedBox(height: 16.h),
        CustomText(
          fontSize: FontManager.font18,
          text:
              "Are you sure you want to\n back without doing this\n Wish-List ?",
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomButton(
            onTap: () => Navigator.pop(context),
            buttonText: "No, keep going",
          ),
        ),
        SizedBox(height: 20.h),
        GestureDetector(
          onTap: () {
            onDelete();
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: CustomText(
            fontSize: 16.sp,
            text: "Yes, Go back",
            fontWeight: FontWeight.w500,
            color: ColorManager.grey828,
          ),
        ),
      ],
    );
  }
}
