import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilities/components/custom_text.dart';
import '../../../utilities/constants/constatnts.dart';
import '../../../utilities/styles/colors.dart';
import '../../../utilities/styles/fonts.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "${Constants.launch} ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: FontManager.font35.sp,
                  fontFamily: Constants.fontFamily,
                ),
              ),
              TextSpan(
                text: Constants.wishlist,
                style: TextStyle(
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: FontManager.font35.sp,
                  fontFamily: Constants.fontFamily,
                ),
              ),
            ],
          ),
        ),
        CustomText(
          text: Constants.mangerApp,
          fontWeight: FontWeight.bold,
          fontSize: FontManager.font35,
        ),
      ],
    );
  }
}
