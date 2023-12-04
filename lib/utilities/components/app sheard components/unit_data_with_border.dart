import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/unit_list_tile.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class UnitDataWithBorder extends StatelessWidget {
  const UnitDataWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.r),
        border: Border.all(color: ColorManager.lightGreyE0E0),
      ),
      child: const UnitListTile(),
    );
  }
}
