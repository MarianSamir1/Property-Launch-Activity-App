import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/login/widgets/app_name_widget.dart';
import 'package:property_launch_app/fetures/login/widgets/login_with_microsoft_button.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //=================== App Name Widget =============================
            const AppNameWidget(),
            //=================== login with microsoft login ==================
            const LoginWithMicrosoftButton(),
            //=================== copyrights ==================================
            Center(
              child: CustomText(
                text: Constants.copyRights,
                fontSize: FontManager.font14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
