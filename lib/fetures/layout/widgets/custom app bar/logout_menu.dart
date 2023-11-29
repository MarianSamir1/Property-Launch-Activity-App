import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utilities/components/custom_svg_picture.dart';
import '../../../../utilities/components/custom_text.dart';
import '../../../../utilities/components/navigation.dart';
import '../../../../utilities/constants/constatnts.dart';
import '../../../../utilities/constants/icons_pathes.dart';
import '../../../../utilities/styles/colors.dart';
import '../../../login/view/login_screen.dart';

class LogOutMenuWidget extends StatelessWidget {
  const LogOutMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      icon: CustomSvgPicture(
        svgImage: IconPathes.bottomArrow,
        height: 5.h,
        width: 5.w,
      ),
      color: ColorManager.white,
      padding: const EdgeInsets.all(0),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            onTap: () {
              navigatepushAndRemoveUntil(
                context: context,
                widget: const LoginScreen(),
              );
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
