import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/unit_list_tile.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

import '../../../utilities/constants/constatnts.dart';

class WishListContanierStatus extends StatelessWidget {
  const WishListContanierStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.w, right: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          width: 1,
          color: ColorManager.lightGreyE0E0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //================= wishlist id , status ==========================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //================= ID ============================
              Column(
                children: [
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "ABV-201",
                    fontSize: FontManager.font18,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              //================ Status ==========================
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: ColorManager.lightOrangeColorF8E,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                ),
                child: const CustomText(
                  text: Constants.pendingReservation,
                  color: ColorManager.mediamOrangeColorC85,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          //================= the wished units List =================================
          SizedBox(height: 6.h),
          const CustomText(
            text: Constants.unitsList,
            color: ColorManager.primaryColor,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10.h),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const UnitListTile(),
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemCount: 3,
          )
        ],
      ),
    );
  }
}
