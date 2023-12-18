import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';

import '../../../../utilities/components/other/custom_svg_picture.dart';
import '../../../../utilities/components/other/custom_text.dart';
import '../../../../utilities/constants/constatnts.dart';
import '../../../../utilities/constants/icons_pathes.dart';
import '../../../../utilities/styles/colors.dart';

class LogOutMenuWidget extends StatelessWidget {
  const LogOutMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: ColorManager.white,
      position: PopupMenuPosition.under,
      icon: CustomSvgPicture(
        svgImage: IconPathes.bottomArrow,
        height: 8.r,
        width: 8.r,
      ),
      color: ColorManager.white,
      padding: const EdgeInsets.all(0),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            onTap: () {
              LayoutCubit.get(context).logOutFun(context);
            },
            height: 25.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: Constants.signOut,
                  fontWeight: FontWeight.w500,
                ),
                Icon(
                  Icons.exit_to_app_rounded,
                  size: 16.r,
                )
              ],
            ),
          )
        ];
      },
    );
  }
}
