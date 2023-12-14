import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/clients%20details/view/clients_details_screen.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/components/other/navigation.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ClientData extends StatelessWidget {
  const ClientData({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigatePush(context: context, widget: const ClientsDetailsScreen());
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.lightGreyE0E0),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Expanded(
                child: CustomText(
                  text: "Ahmed Sami Mahmoud",
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () async {
                  await launchUrlFun(
                      url: Uri(scheme: "tel", path: "+201223142255"));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.call_outlined,
                      color: ColorManager.primaryColor,
                      size: 18.r,
                    ),
                    const CustomText(
                      text: Constants.call,
                      color: ColorManager.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: 15.h),
            Row(
              children: [
                const CustomText(
                  text: "2 ${Constants.wishlists}",
                  color: ColorManager.grey828,
                ),
                SizedBox(width: 12.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                    color: ColorManager.lightOrangeColorF8E,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: const CustomText(
                    text: "1 ${Constants.pendingReservation}",
                    color: ColorManager.mediamOrangeColorC85,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> launchUrlFun({required Uri url}) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}
