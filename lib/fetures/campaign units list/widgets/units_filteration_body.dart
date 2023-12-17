import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/selectabel_filter_widget.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_divider.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import '../../../utilities/components/app sheard components/card_textformfield.dart';
import '../controller/cubit.dart';
import '../controller/states.dart';

class UnitsFiltrationBody extends StatelessWidget {
  const UnitsFiltrationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh - 260.h,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //first secton of choose campain in layout screen ( LayoutHeaderBody )
              //====================== units Type list =======================
              const CustomDivider(),
              SizedBox(height: 5.h),
              const CustomText(
                text: Constants.unitsType,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 8.h),
              BlocBuilder<UnitsListCubit, UnitsListState>(
                builder: (context, state) => SizedBox(
                  height: 37,
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
                    itemCount:
                        UnitsListCubit.get(context).villaOrFlatList.length,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              //====================== finishing Type list =======================
              // const CustomText(
              //   text: Constants.finishingType,
              //   fontWeight: FontWeight.w500,
              // ),
              // SizedBox(height: 8.h),
              // BlocBuilder<UnitsListCubit, UnitsListState>(
              //   builder: (context, state) => SizedBox(
              //     height: 37,
              //     child: ListView.separated(
              //       scrollDirection: Axis.horizontal,
              //       itemBuilder: (context, index) => Center(
              //         child: SelectableFilterWidget(
              //           containerTitle: UnitsListCubit.get(context)
              //               .finishingTypeList[index],
              //           currentIndex: UnitsListCubit.get(context)
              //               .finishingTypeCurrentIndex,
              //           containerIndex: index,
              //           onTap: () {
              //             UnitsListCubit.get(context).finishingTypeChangeFun(
              //               finishingTypeIndex: index,
              //             );
              //           },
              //         ),
              //       ),
              //       separatorBuilder: (context, index) => SizedBox(width: 10.w),
              //       itemCount:
              //           UnitsListCubit.get(context).finishingTypeList.length,
              //     ),
              //   ),
              // ),
              //======================= find matches button ==========================
            ],
          ),
          //=========================== space widget =================================
          CardOfTextFormField(
            controller: UnitsListCubit.get(context).spaceController,
            textFormLabel: Constants.enterSpace,
            titleName: Constants.space,
          ),
          //===========================================================================
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: CustomButton(
              onTap: () {
                LayoutCubit.get(context).addUnitsFiltrationFun();
              },
              buttonText: Constants.findMatches,
            ),
          )
        ],
      ),
    );
  }
}
