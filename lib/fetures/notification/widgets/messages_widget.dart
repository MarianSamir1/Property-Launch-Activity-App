import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';
import '../../../utilities/components/other/custom_svg_picture.dart';

class MesssagesWidget extends StatelessWidget {
  const MesssagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            backgroundColor: Colors.red,
            onPressed: (context) {},
            icon: Icons.delete_outline,
            foregroundColor: Colors.white,
          )
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          border: Border.all(color: ColorManager.lightGreyE0E0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //==================== person svg asset =========================
            CustomSvgPicture(
              svgImage: IconPathes.person,
              height: 15.r,
              width: 15.r,
              color: ColorManager.primaryColor,
            ),
            SizedBox(width: 10.w),
            //==========================================================================
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //==================== name , wishList ID Row =========================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: CustomText(
                          text: "Ahmed sami Mahmoud",
                          color: ColorManager.primaryColor,
                          textOverflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      const CustomText(
                        text: "02/002-0D",
                        color: ColorManager.primaryColor,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  //====================== message content =========================
                  SizedBox(height: 10.h),
                  const CustomText(
                      text:
                          "Your Wishlist for reserving unit XYZ was waitlisted because there are other customers who have requested the same unit before you do. Your turn is 3rd in the waiting list."),
                  SizedBox(height: 10.h),
                  //====================== date , and messge status =========================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomText(
                          text: "15 Dec -10 : 01 AM",
                          color: ColorManager.grey828,
                          fontSize: FontManager.font14,
                        ),
                      ),
                      CustomText(
                        text: "Reservation",
                        color: ColorManager.green,
                        fontSize: FontManager.font14,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
