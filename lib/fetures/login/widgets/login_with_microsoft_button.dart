import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/login/controller/cubit.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';
import '../../../utilities/components/other/custom_circular_progress_indicator.dart';
import '../../../utilities/components/other/custom_svg_picture.dart';
import '../../../utilities/components/other/custom_text.dart';
import '../../../utilities/constants/constatnts.dart';
import '../controller/states.dart';

class LoginWithMicrosoftButton extends StatelessWidget {
  const LoginWithMicrosoftButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: InkWell(
                onTap: () {
                  if (state is! LoginLoadingState) {
                    LoginCubit.get(context)
                        .loginWithMicrosoftFun(context: context);
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: (const Offset(0, 0)),
                      )
                    ],
                  ),
                  child: state is LoginLoadingState
                      ? const CustomCircularProgressIndicator()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomSvgPicture(
                                svgImage: IconPathes.microsoft),
                            SizedBox(width: 16.w),
                            CustomText(
                              text: Constants.loginWithMicrosoft,
                              fontWeight: FontWeight.w500,
                              fontSize: FontManager.font17,
                            )
                          ],
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
