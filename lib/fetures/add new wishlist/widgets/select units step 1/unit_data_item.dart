import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../../../utilities/components/other/custom_svg_picture.dart';

class UnitDataItem extends StatelessWidget {
  final int index;
  const UnitDataItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
      builder: (context, state) => InkWell(
        onTap: () {
          CreateNewWishlistCubit.get(context)
              .addUnitsToWishListFun(index: index);
        },
        child: Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            border: Border.all(
              color: CreateNewWishlistCubit.get(context)
                      .unitsIDsList
                      .contains(index)
                  ? ColorManager.grey828
                  : ColorManager.white,
            ),
          ),
          child: Row(
            children: [
              if (CreateNewWishlistCubit.get(context)
                  .unitsIDsList
                  .contains(index))
                CustomSvgPicture(
                  svgImage: IconPathes.rhmobusFilledSelected,
                  height: 20.h,
                  width: 20.w,
                )
              else
                CustomSvgPicture(
                  svgImage: IconPathes.unSlectedSquire,
                  height: 20.h,
                  width: 20.w,
                ),
              SizedBox(width: 18.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "02/002-0D",
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 3.h),
                  const CustomText(
                    text: "\$14,816,000",
                    color: ColorManager.grey828,
                  )
                ],
              ),
              const Spacer(),
              const CustomText(
                text: "3 Reserved",
                color: ColorManager.primaryColor,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
      ),
    );
  }
}
