import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/components/alerts/toast.dart';
import '../../../../utilities/components/app sheard components/custom_drop_down_list.dart';
import '../../../../utilities/components/other/custom_bottom_sheet.dart';
import '../../../../utilities/constants/constatnts.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select_client_bottom_sheet_list.dart';

import '../../controller/states.dart';

class SelectClientSection extends StatelessWidget {
  const SelectClientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h),
          const CustomText(
            text: Constants.selectClient,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10.h),
          BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
            builder: (context, state) => CustomDropDownList(
              hint: Constants.selectClient,
              value: CreateNewWishlistCubit.get(context).selectedClientIndex ==
                      null
                  ? null
                  : CreateNewWishlistCubit.get(context).clientsList[
                      CreateNewWishlistCubit.get(context).selectedClientIndex!],
              onOpenTap: () {
                openBottomSheet(
                  context,
                  bottomSheetHeader: Constants.selectClient,
                  widget: const SelectClientBottomSheetList(),
                );
              },
            ),
          ),
          const Expanded(child: SizedBox()),
          //=========================== continue button ========================
          CustomButton(
            onTap: () {
              if (CreateNewWishlistCubit.get(context).selectedClientIndex ==
                  null) {
                    showToast(msg: "Please select client to continue", state: ToastStates.ERROR );
              } else {
                CreateNewWishlistCubit.get(context).changeToNextStep(index: 1);
              }
            },
            buttonText: Constants.continueText,
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
