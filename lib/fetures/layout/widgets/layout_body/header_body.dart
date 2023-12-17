import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/select_campaign_bottom_sheet_list.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/select_campaign_widget.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/custom_drop_down_list.dart';
import 'package:property_launch_app/utilities/components/other/custom_bottom_sheet.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
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
          cubit.addUnitsFiltration == true && cubit.currentIndex == 2
              ? Container()
              : CustomText(
                  text: Constants.campaign,
                  fontSize: FontManager.font16,
                  fontWeight: FontWeight.bold,
                ),
          if (cubit.selectedCampaignIndex != null) const SelectCampaignWidget(),
          if (cubit.selectedCampaignIndex == null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                CustomText(
                  text: "Select a campaign to continue",
                  color: ColorManager.black1919.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 8.h),
                CustomDropDownList(
                  hint: Constants.selectCampaign,
                  onOpenTap: () {
                    openBottomSheet(
                      context,
                      bottomSheetHeader: Constants.selectCampaign,
                      widget: const SelectCampaignBottomSheetList(),
                    );
                  },
                ),
              ],
            )
        ],
      ),
    );
  }
}
