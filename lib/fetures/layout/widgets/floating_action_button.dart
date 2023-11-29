import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class FloatingActionButtonCustomization extends StatelessWidget {
  const FloatingActionButtonCustomization({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: Transform.rotate(
        angle: pi / 4,
        child: Container(
          padding: EdgeInsets.all(20.r),
          decoration: const BoxDecoration(
            color: ColorManager.primaryColor,
          ),
          child: Icon(
            Icons.close,
            color: ColorManager.white,
            size: 25.r,
          ),
        ),
      ),
    );
  }
}
