import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class AddWishListRow extends StatelessWidget {
  const AddWishListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: Constants.wishlists,
          fontSize: FontManager.font18,
          fontWeight: FontWeight.w500,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_circle_outline_outlined,
            color: ColorManager.primaryColor,
            size: 25.r,
          ),
        )
      ],
    );
  }
}
