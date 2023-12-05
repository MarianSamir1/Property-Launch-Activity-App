import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

Future<dynamic> alertDialog(
    {required BuildContext context,
    required Widget widget,
    double? alertHeight}) {
  return showDialog(
    context: context,
    builder: (BuildContext cxt) {
      return Dialog(
        surfaceTintColor: ColorManager.white,
        insetPadding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.r),
        ), //this right here
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: SizedBox(
            height: alertHeight ?? 1.sh / 2.5,
            width: double.infinity,
            child: widget,
          ),
        ),
      );
    },
  );
}
