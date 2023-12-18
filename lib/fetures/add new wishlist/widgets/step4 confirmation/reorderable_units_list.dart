import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/unit_data_with_border.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';


class ReorderableUnitsList extends StatelessWidget {
  final int index;
  const ReorderableUnitsList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                backgroundColor: Colors.red,
                onPressed: (context) {
                  CreateNewWishlistCubit.get(context)
                      .deleteUnitsFromWishListFun(index: index);
                },
                icon: Icons.delete_outline,
                foregroundColor: Colors.white,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "${index + 1}.",
                    color: ColorManager.primaryColor,
                    fontSize: FontManager.font20,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 1.sw - 63.5.w,
                    child: const UnitDataWithBorder(),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        );
  }   
}
