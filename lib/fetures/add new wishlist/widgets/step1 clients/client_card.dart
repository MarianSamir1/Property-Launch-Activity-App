import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class ClientCard extends StatelessWidget {
  const ClientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CreateNewWishlistCubit.get(context).changeToNextStep(index: 2);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.lightGreyE0E0,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Maran samir ibrahim",
              fontSize: FontManager.font18,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.call_outlined,
                  color: ColorManager.black1919.withOpacity(0.7),
                  size: 20.r,
                ),
                SizedBox(width: 5.w),
                CustomText(
                  text: "01267899076",
                  color: ColorManager.black1919.withOpacity(0.7),
                ),
                const Spacer(),
                Icon(
                  Icons.co_present_outlined,
                  color: ColorManager.black1919.withOpacity(0.7),
                  size: 20.r,
                ),
                SizedBox(width: 5.w),
                CustomText(
                  text: "2948465690375",
                  color: ColorManager.black1919.withOpacity(0.7),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
