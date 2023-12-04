import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/villa_or_flat_widget.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import '../controller/cubit.dart';
import '../controller/states.dart';
import '../../../utilities/components/app sheard components/unit_data_with_border.dart';

class UnitsSection extends StatelessWidget {
  const UnitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //first secton of choose campain in layout screen ( LayoutHeaderBody )
        //====================== Campaign Features title =======================
        SizedBox(height: 10.h),
        const CustomText(
          text: Constants.unitsInTheCampaign,
          fontWeight: FontWeight.w500,
        ),
        //====================== villa , flat =====================
        BlocBuilder<UnitsListCubit, UnitsListState>(
          builder: (context, state) => Padding(
            padding: EdgeInsets.symmetric(vertical: 11.h),
            child: Row(
              children: [
                VillaOrFlatWidget(
                    containerTitle: "Villa",
                    currentValue: UnitsListCubit.get(context).villaOrFlatt,
                    onTap: () {
                      UnitsListCubit.get(context).isVillaChangeFun(
                        villaOrFlat: "Villa",
                      );
                    }),
                SizedBox(width: 10.w),
                VillaOrFlatWidget(
                    containerTitle: "Flat",
                    currentValue: UnitsListCubit.get(context).villaOrFlatt,
                    onTap: () {
                      UnitsListCubit.get(context).isVillaChangeFun(
                        villaOrFlat: "Flat",
                      );
                    }),
              ],
            ),
          ),
        ),
        //====================== units list ========================
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const UnitDataWithBorder(),
          separatorBuilder: (context, index) => SizedBox(height: 5.h),
          itemCount: 10,
        ),
      ],
    );
  }
}
