import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/models/campaign_model.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class LaunchAndTargetAudiencesWidget extends StatelessWidget {
  final CampaignData campaignData;
  const LaunchAndTargetAudiencesWidget({super.key, required this.campaignData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            //================= direct , targetAudiences ============================
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Row(
                children: [
                  CustomText(
                    text: campaignData.blsercampaigntypeFormattedValue!,
                    fontWeight: FontWeight.w500,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: const CircleAvatar(
                      backgroundColor: ColorManager.black1919,
                      maxRadius: 2,
                    ),
                  ),
                  CustomText(
                    text:
                        "${Constants.unitsCount} ${campaignData.blserUnitscount}",
                    color: ColorManager.grey828,
                  ),
                ],
              ),
            ),
          ],
        ),
        //================= Launch Widget ======================
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: ColorManager.lightGreenE8F,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.r),
              bottomRight: Radius.circular(15.r),
            ),
          ),
          child: CustomText(
            text: campaignData.blserCampaignstatusFormattedValue!,
            color: ColorManager.green,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
