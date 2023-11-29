import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/widgets/villa_or_flat_widget.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import 'unit_data_widget.dart';

class UnitsInTheCampaignSection extends StatelessWidget {
  const UnitsInTheCampaignSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        //====================== Campaign Features title =======================
        const CustomText(
          text: Constants.unitsInTheCampaign,
          fontWeight: FontWeight.w500,
        ),
        //====================== villa , flat =====================
        Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h),
          child: Row(
            children: [
              const VillaOrFlatWidget(containerTitle: "Villa"),
              SizedBox(width: 10.w),
              const VillaOrFlatWidget(containerTitle: "Flat")
            ],
          ),
        ),
        //====================== units list ========================
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const UnitDataWidget(),
          separatorBuilder: (context, index) => SizedBox(height: 5.h),
          itemCount: 10,
        ),
      ],
    );
  }
}
