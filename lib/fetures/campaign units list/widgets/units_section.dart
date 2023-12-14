import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../../utilities/components/app sheard components/unit_data_with_border.dart';

class UnitsSection extends StatelessWidget {
  const UnitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              text: Constants.unitsFilteredBy,
              color: ColorManager.black1919,
              fontWeight: FontWeight.w500,
            ),
            TextButton(
              onPressed: () {
                LayoutCubit.get(context).addUnitsFiltrationFun();
              },
              child: const CustomText(
                text: Constants.edit,
                color: ColorManager.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        CustomText(
          text: "Villa - Fully Finishing - (100 : 200 m2 )",
          color: ColorManager.black1919.withOpacity(0.7),
          textOverflow: TextOverflow.ellipsis,
          maxLines: 1,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 12.h),
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const UnitDataWithBorder(),
          separatorBuilder: (context, index) => SizedBox(height: 8.h),
          itemCount: 10,
        ),
      ],
    );
  }
}
