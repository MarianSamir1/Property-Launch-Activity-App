import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

import '../../../../utilities/components/app sheard components/radio_row_item.dart';

class SelectClientBottomSheetRowItem extends StatelessWidget {
  const SelectClientBottomSheetRowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.42.sh,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () async {
              //   cubit.selectCampaignFun(campaignIndex: index);
              await Future.delayed(const Duration(milliseconds: 200));
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: RadioRowItem(
              title: "marian samir",
              isSelected: 1 == index,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          color: ColorManager.lightGreyE0E0,
        ),
        itemCount: 5,
      ),
    );
  }
}
