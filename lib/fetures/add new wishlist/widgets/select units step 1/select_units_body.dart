import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20units%20step%201/unit_data_item.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20units%20step%201/villa_or_flat.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_bottom_sheet.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/components/alerts/toast.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../select_client_bottom_sheet_list.dart';
import '../../../../utilities/constants/constatnts.dart';

class SelectUnitsBody extends StatelessWidget {
  const SelectUnitsBody({super.key});

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
                children: [
                  const CustomText(
                    text: Constants.client,
                    fontWeight: FontWeight.bold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: BlocBuilder<CreateNewWishlistCubit,
                            CreateNewWishlistState>(
                          builder: (context, state) => CustomText(
                            text: cubit.clientsList[cubit.selectedClientIndex!],
                            color: ColorManager.black1919.withOpacity(0.7),
                            textOverflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          openBottomSheet(
                            context,
                            bottomSheetHeader: Constants.selectClient,
                            widget: const SelectClientBottomSheetList(),
                          );
                        },
                        child: const CustomText(
                          text: Constants.change,
                          color: ColorManager.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  //====================================================================
                  SizedBox(height: 5.h),
                  const CustomText(
                    text: Constants.selectUnits,
                    fontWeight: FontWeight.w500,
                  ),
                  //=========================== Villa Or Flat ===========================
                  SizedBox(height: 10.h),
                  const VillaOrFlat(),
                  //=========================== select units ===========================
                  SizedBox(height: 10.h),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(bottom: 15.h),
                    itemBuilder: (context, index) => UnitDataItem(index: index),
                    separatorBuilder: (context, index) => SizedBox(height: 5.h),
                    itemCount: 10,
                  ),
                ],
              ),
            ),
          ),
          //=====================================================================
          SizedBox(height: 10.h),
          CustomButton(
            buttonText: Constants.addUnitsToTheWishlist,
            onTap: () {
              if (cubit.unitsIDsList.isEmpty) {
                showToast(msg: "Please Select Unit", state: ToastStates.ERROR);
              } else {
                cubit.changeToNextStep(index: 2);
              }
            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
