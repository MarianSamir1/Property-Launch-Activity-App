import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../widgets/launch_widget.dart';

class CampaignFeaturesSection extends StatelessWidget {
  const CampaignFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        //====================== Campaign Features title =======================
        const CustomText(
          text: Constants.campaignFeatures,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10.h),
        //====================== Campaign Feature border contanier =======================
        Container(
          padding: EdgeInsets.only(left: 15.w, right: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(
              width: 1,
              color: ColorManager.lightGreyE0E0,
            ),
          ),
          child: Column(
            children: [
              //================= Launch And Project Name Widget ======================
              const LaunchAndTargetAudiencesWidget(),
              //================= from , to date ============================
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: ColorManager.lightRedF8F,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 17.r,
                    ),
                    SizedBox(width: 8.w),
                    const CustomText(
                      text: "15 Dec 2023",
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 8.w),
                    const CustomText(
                      text: Constants.to,
                      color: ColorManager.grey828,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 8.w),
                    const CustomText(
                      text: "31 Dec 2023",
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              //================= Reservation Value ============================
              SizedBox(height: 10.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: Constants.reservationValue,
                    color: ColorManager.grey828,
                  ),
                  CustomText(
                    text: "192.5 Mil",
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }
}
