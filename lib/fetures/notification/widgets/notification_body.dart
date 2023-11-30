import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/notification/widgets/messages_widget.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 5.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //======================= messages title ============================
            const CustomText(
              text: Constants.yourClientsMessages,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 15.h),
            //======================= messages list ============================
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const MesssagesWidget(),
              separatorBuilder: (context, index) => SizedBox(height: 10.h),
              itemCount: 10,
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
