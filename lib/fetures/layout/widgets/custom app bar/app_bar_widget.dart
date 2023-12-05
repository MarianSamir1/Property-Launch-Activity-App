import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/states.dart';
import 'package:property_launch_app/fetures/notification/view/notification_screen.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/components/other/navigation.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

import '../../../../utilities/components/other/custom_svg_picture.dart';
import 'logout_menu.dart';

class LayoutAppBarWidget extends StatelessWidget {
  const LayoutAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 35.h, bottom: 12.h, left: 20.w, right: 25.w),
      width: double.infinity,
      color: ColorManager.black1919,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //============================ appBar title , notification =================
          BlocBuilder<LayoutCubit, LayoutState>(
            builder: (context, state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: LayoutCubit.get(context)
                      .tapsAppBarTitle[LayoutCubit.get(context).currentIndex],
                  color: ColorManager.white,
                  fontSize: FontManager.font16,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () {
                    navigatePush(
                        context: context, widget: const NotificationScreen());
                  },
                  child: const CustomSvgPicture(
                    svgImage: IconPathes.notification,
                  ),
                ),
              ],
            ),
          ),
          //========================== welcom name ================================
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: Constants.welcom,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: FontManager.font14.sp,
                        fontFamily: Constants.fontFamily,
                      ),
                    ),
                    TextSpan(
                      text: "Mohamed",
                      style: TextStyle(
                        color: ColorManager.white,
                        fontWeight: FontWeight.bold,
                        fontSize: FontManager.font14.sp,
                        fontFamily: Constants.fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              //====================== logout menu =========================
              const LogOutMenuWidget()
            ],
          ),
        ],
      ),
    );
  }
}
