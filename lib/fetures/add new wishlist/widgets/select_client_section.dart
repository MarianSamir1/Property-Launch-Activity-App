import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../../utilities/components/app sheard components/custom_drop_down_list.dart';
import '../../../utilities/components/custom_bottom_sheet.dart';
import '../../../utilities/constants/constatnts.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select_client_bottom_sheet_row_item.dart';

class SelectClientSection extends StatelessWidget {
  const SelectClientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5.h),
        const CustomText(
          text: Constants.selectClient,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10.h),
        CustomDropDownList(
          hint: Constants.selectClient,
          onOpenTap: () {
            openBottomSheet(
              context,
              bottomSheetHeader: Constants.selectClient,
              widget: const SelectClientBottomSheetRowItem(),
            );
          },
        ),
       // const Expanded(child: SizedBox(height: 1,)),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(color: ColorManager.primaryColor)),
          child: const CustomText(
            text: Constants.continueText,
            textAlign: TextAlign.center,
            color: ColorManager.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
