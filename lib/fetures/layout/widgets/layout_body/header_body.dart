import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/bottom_sheet_row_item.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/custom_drop_down_list.dart';
import 'package:property_launch_app/utilities/components/custom_bottom_sheet.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

import '../../controller/cubit.dart';
import '../../controller/states.dart';

class LayoutHeaderBody extends StatelessWidget {
  const LayoutHeaderBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: Constants.campaign,
            fontSize: FontManager.font16,
            fontWeight: FontWeight.bold,
          ),
          if (cubit.selectedCampaignIndex != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomText(
                    text:
                        "${cubit.campaignList[cubit.selectedCampaignIndex!]} ( Palm Park )",
                    color: ColorManager.black1919.withOpacity(0.7),
                    textOverflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    openBottomSheet(
                      context,
                      bottomSheetHeader: Constants.selectCampaign,
                      widget: const BottomSheetRowItem(),
                    );
                  },
                  child: const CustomText(
                    text: Constants.change,
                    color: ColorManager.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          if (cubit.selectedCampaignIndex == null) SizedBox(height: 8.h),
          if (cubit.selectedCampaignIndex == null)
            CustomDropDownList(
              hint: Constants.selectCampaign,
              onOpenTap: () {
                openBottomSheet(
                  context,
                  bottomSheetHeader: Constants.selectCampaign,
                  widget: const BottomSheetRowItem(),
                );
              },
            )
        ],
      ),
    );
  }
}
