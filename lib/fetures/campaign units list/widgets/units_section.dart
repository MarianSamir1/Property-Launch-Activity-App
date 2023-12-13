import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/selectabel_filter_widget.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import '../../../utilities/components/app sheard components/unit_data_with_border.dart';
import '../controller/cubit.dart';
import '../controller/states.dart';

class UnitsSection extends StatelessWidget {
  const UnitsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //first secton of choose campain in layout screen ( LayoutHeaderBody )
        //====================== units Type list =======================
        SizedBox(height: 10.h),
        const CustomText(
          text: Constants.unitsType,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8.h),
        BlocBuilder<UnitsListCubit, UnitsListState>(
          builder: (context, state) => SizedBox(
            height: 30.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Center(
                child: SelectableFilterWidget(
                  containerTitle:
                      UnitsListCubit.get(context).villaOrFlatList[index],
                  currentIndex:
                      UnitsListCubit.get(context).villaOrFlatCurrentIndex,
                  containerIndex: index,
                  onTap: () {
                    UnitsListCubit.get(context).isVillaChangeFun(
                      villaOrFlat: index,
                    );
                  },
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount: UnitsListCubit.get(context).villaOrFlatList.length,
            ),
          ),
        ),
        SizedBox(height: 18.h),
        //====================== finishing Type list =======================
        const CustomText(
          text: Constants.finishingType,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 8.h),
        BlocBuilder<UnitsListCubit, UnitsListState>(
          builder: (context, state) => SizedBox(
            height: 30.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Center(
                child: SelectableFilterWidget(
                  containerTitle:
                      UnitsListCubit.get(context).finishingTypeList[index],
                  currentIndex:
                      UnitsListCubit.get(context).finishingTypeCurrentIndex,
                  containerIndex: index,
                  onTap: () {
                    UnitsListCubit.get(context).finishingTypeChangeFun(
                      finishingTypeIndex: index,
                    );
                  },
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount: UnitsListCubit.get(context).finishingTypeList.length,
            ),
          ),
        ),
        
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
