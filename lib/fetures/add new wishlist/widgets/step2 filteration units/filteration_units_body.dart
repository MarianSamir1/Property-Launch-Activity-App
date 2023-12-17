import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/selectabel_filter_widget.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_divider.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

import '../../../../utilities/components/app sheard components/card_textformfield.dart';

class FiltrationUnitsBody extends StatelessWidget {
  const FiltrationUnitsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Column(
        children: [
          //======================= edit client ================================
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: Constants.client,
                    fontWeight: FontWeight.bold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomText(
                          text: "Ahmed Sami Mahmoud",
                          color: ColorManager.black1919.withOpacity(0.7),
                          textOverflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (CreateNewWishlistCubit.get(context).passingStep ==
                          null)
                        TextButton(
                          onPressed: () {
                            CreateNewWishlistCubit.get(context).backStep();
                          },
                          child: const CustomText(
                            text: Constants.edit,
                            color: ColorManager.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                    ],
                  ),
                  //=========================== units Type =======================================
                  if (CreateNewWishlistCubit.get(context).passingStep != null)
                    SizedBox(height: 5.h),
                  const CustomDivider(),
                  SizedBox(height: 5.h),
                  const CustomText(
                    text: Constants.unitsType,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8.h),
                  BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
                    builder: (context, index) => SizedBox(
                      height: 37,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Center(
                          child: SelectableFilterWidget(
                            containerTitle: CreateNewWishlistCubit.get(context)
                                .villaOrFlatList[index],
                            currentIndex: CreateNewWishlistCubit.get(context)
                                .villaOrFlatCurrentIndex,
                            containerIndex: index,
                            onTap: () {
                              CreateNewWishlistCubit.get(context)
                                  .isVillaChangeFun(
                                villaOrFlat: index,
                              );
                            },
                          ),
                        ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10.w),
                        itemCount: CreateNewWishlistCubit.get(context)
                            .villaOrFlatList
                            .length,
                      ),
                    ),
                  ),

                  SizedBox(height: 16.h),

                  //=========================== space widget =================================
                  CardOfTextFormField(
                    controller:
                        CreateNewWishlistCubit.get(context).spaceController,
                    textFormLabel: Constants.enterSpace,
                    titleName: Constants.space,
                  ),
                ],
              ),
            ),
          ),
          //====================== Find matches ==============================================
          CustomButton(
            onTap: () {
              CreateNewWishlistCubit.get(context).changeToNextStep(index: 3);
            },
            buttonText: Constants.findMatches,
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
