import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/states.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

import '../../../../utilities/components/app sheard components/radio_row_item.dart';

class BottomSheetRowItem extends StatelessWidget {
  const BottomSheetRowItem({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) => SizedBox(
        height: 0.42.sh,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                cubit.selectCampaignFun(campaignIndex: index);
                await Future.delayed(const Duration(milliseconds: 200));
                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
              child: RadioRowItem(
                title: cubit.campaignList[index],
                isSelected: cubit.selectedCampaignIndex == index,
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            color: ColorManager.lightGreyE0E0,
          ),
          itemCount: cubit.campaignList.length,
        ),
      ),
    );
  }
}
