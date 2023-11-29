import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/widgets/bottom%20navigation/custom_shape_painter.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'bottom_nav_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(1.sw, 70.h),
      painter: CustomShapePainter(),
      child: Container(
        color: Colors.transparent,
        height: Platform.isAndroid ? 50.h : 60.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Expanded(
              child: BottomNavItem(
                index: 0,
                icon: IconPathes.homeIcon,
                label: Constants.home,
              ),
            ),
            const Expanded(
              child: BottomNavItem(
                index: 1,
                icon: IconPathes.clientListIcon,
                label: Constants.clientsList,
              ),
            ),
            const Expanded(
              child: BottomNavItem(
                index: 2,
                icon: IconPathes.unitsListIcon,
                label: Constants.unitsList,
              ),
            ),
            SizedBox(width: 25.w),
            const Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
