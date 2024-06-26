import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'reorderable_units_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';

class ConfirmWishlistbody extends StatelessWidget {
  const ConfirmWishlistbody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = CreateNewWishlistCubit.get(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //============================== client name ============================
                  const CustomText(
                    text: Constants.client,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 6.h),
                  CustomText(
                    text: "Ahmed Sami Mahmoud",
                    color: ColorManager.black1919.withOpacity(0.7),
                    textOverflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 15.h),
                  //============================== units list ============================
                  const CustomText(
                    text: Constants.selectedUnits,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 6.h),
                  CustomText(
                    text: Constants.swipeToRearrangeYourUnits,
                    color: ColorManager.black1919.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
                    builder: (context, state) => ReorderableListView.builder(
                      onReorder: (oldIndex, newIndex) {
                        cubit.onReorderFun(
                            oldIndex: oldIndex, newIndex: newIndex);
                      },
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ReorderableUnitsList(
                        index: index,
                        key: ValueKey(cubit.unitsIDsList[index]),
                      ),
                      itemCount: cubit.unitsIDsList.length,
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
          //============================== confirm /edit button ============================
          SizedBox(height: 8.h),
          CustomButton(
            buttonText: Constants.confirm,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 5.h),
          // TextButton(
          //   onPressed: () {
          //     CreateNewWishlistCubit.get(context).backStep();
          //   },
          //   child: const CustomText(
          //     text: Constants.edit,
          //     fontWeight: FontWeight.bold,
          //     color: ColorManager.grey828,
          //   ),
          // ),
        ],
      ),
    );
  }
}
