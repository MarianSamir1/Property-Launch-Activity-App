import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors.dart';
import '../../styles/fonts.dart';

class CustomTextFormFeild extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? label;
  final String? error;
  final Color? textFormColor;
  final bool? obscureText;
  const CustomTextFormFeild({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.label,
    this.error,
    this.textFormColor,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: error == null
          ? null
          : (s) {
              if (s!.isEmpty) {
                return error;
              }
              return null;
            },
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: ColorManager.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.r),
          borderSide: const BorderSide(
            width: 1,
            color: ColorManager.lightGreyE0E0,
          ), //<-- SEE HERE
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.r),
          borderSide: const BorderSide(
            width: 1,
            color: ColorManager.lightGreyE0E0,
          ),
          //<-- SEE HERE
        ),
        contentPadding: EdgeInsets.only(left: 15.5.w),
        hintText: label,
        errorStyle: TextStyle(
          fontSize: FontManager.font12,
        ),
        hintStyle: TextStyle(
          color: ColorManager.grey828,
          fontSize: FontManager.font14,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
