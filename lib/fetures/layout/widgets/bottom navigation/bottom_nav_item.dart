import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';
import '../../../../utilities/components/custom_text.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utilities/constants/icons_pathes.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final String icon;
  final String label;
  const BottomNavItem({
    super.key,
    required this.index,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
      return InkWell(
        onTap: () {
          LayoutCubit.get(context).changeLayoutBody(index: index);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            if (LayoutCubit.get(context).currentIndex == index)
              const TopColoredLineInNavBar()
            else
              SizedBox(height: 8.5.h),
            if (LayoutCubit.get(context).currentIndex == 0 && index == 0)
              const CustomSvgPicture(svgImage: IconPathes.selectedHomeIcon)
            else
              CustomSvgPicture(
                svgImage: icon,
                color: LayoutCubit.get(context).currentIndex == index
                    ? ColorManager.primaryColor
                    : null,
              ),
            SizedBox(height: 5.h),
            CustomText(
              text: label,
              color: LayoutCubit.get(context).currentIndex == index
                  ? ColorManager.primaryColor
                  : ColorManager.black1919,
              fontSize: FontManager.font12,
              fontWeight: LayoutCubit.get(context).currentIndex == index
                  ? FontWeight.bold
                  : FontWeight.w500,
            ),
          ],
        ),
      );
    });
  }
}

class TopColoredLineInNavBar extends StatelessWidget {
  const TopColoredLineInNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      color: ColorManager.primaryColor,
      height: 2,
      width: 55.w,
      child: const SizedBox(),
    );
  }
}
