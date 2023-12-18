import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/select_campaign_bottom_sheet_list.dart';
import 'package:property_launch_app/utilities/components/other/custom_bottom_sheet.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../controller/cubit.dart';
import '../../controller/states.dart';

class SelectCampaignWidget extends StatelessWidget {
  const SelectCampaignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        if (cubit.addUnitsFiltration == true && cubit.currentIndex == 2) {
          return Container();
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomText(
                  text: cubit.campaignModel!.value![cubit.selectedCampaignIndex!].blserTopic!,
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
                    widget: const SelectCampaignBottomSheetList(),
                  );
                },
                child: const CustomText(
                  text: Constants.edit,
                  color: ColorManager.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          );
        }
      },
    );
  }
}
