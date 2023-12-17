import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../other/custom_form_filed.dart';
import '../other/custom_text.dart';

class CardOfTextFormField extends StatelessWidget {
  final String titleName;
  final String? textFormLabel;
  final String? textFormError;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Color? textFormColor;
  final bool? obscureText;
  const CardOfTextFormField({
    super.key,
    required this.titleName,
    required this.controller,
    required this.textFormLabel,
    this.obscureText,
    this.textFormError,
    this.keyboardType,
    this.textFormColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          text: titleName,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8.h),
        CustomTextFormFeild(
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.name,
          label: textFormLabel,
          error: textFormError,
          textFormColor: textFormColor,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
