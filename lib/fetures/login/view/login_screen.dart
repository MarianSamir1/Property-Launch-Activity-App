import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/login/widgets/login_body.dart';
import 'package:property_launch_app/utilities/constants/images_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(children: [
        //=================== login image header =========================
        Image.asset(
          ImagesPaths.loginImage,
          width: double.infinity,
          height: 1.sh / 1.8,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 30.h),
        //=================== login body =========================
        const LoginBody(),
      ]),
    );
  }
}
