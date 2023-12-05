import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import '../other/custom_svg_picture.dart';

class RadioRowItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const RadioRowItem({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title,
            fontWeight: FontWeight.w500,
          ),
          isSelected
              ? const CustomSvgPicture(
                  svgImage: IconPathes.rhmobusFilledSelected)
              : const CustomSvgPicture(svgImage: IconPathes.unSlectedSquire)
        ],
      ),
    );
  }
}
