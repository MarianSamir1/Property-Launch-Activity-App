import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/controller/cubit.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/controller/states.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

class VillaOrFlatWidget extends StatelessWidget {
  final String containerTitle;
  const VillaOrFlatWidget({super.key, required this.containerTitle});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnitsListCubit, UnitsListState>(
      builder: (context, state) => InkWell(
        borderRadius: BorderRadius.circular(50.r),
        onTap: () {
          UnitsListCubit.get(context)
              .isVillaChangeFun(villaOrFlat: containerTitle);
        },
        child: Container(
          width: 86.w,
          padding: EdgeInsets.symmetric(vertical: 8.h),
          decoration: BoxDecoration(
            color: UnitsListCubit.get(context).villaOrFlatt == containerTitle
                ? ColorManager.primaryColor
                : ColorManager.white,
            border: Border.all(
              color: ColorManager.primaryColor,
            ),
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: CustomText(
            text: containerTitle,
            textAlign: TextAlign.center,
            color: UnitsListCubit.get(context).villaOrFlatt == containerTitle
                //condition based on witch is select
                ? ColorManager.white
                : ColorManager.primaryColor,
            fontSize: FontManager.font18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
