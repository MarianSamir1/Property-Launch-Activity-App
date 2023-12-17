import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../../../utilities/components/app sheard components/unit_list_tile.dart';
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
            border: Border.all(color: ColorManager.lightGreyE0E0),
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
              SizedBox(
                width: 1.sw - 120,
                child: const UnitListTile(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
