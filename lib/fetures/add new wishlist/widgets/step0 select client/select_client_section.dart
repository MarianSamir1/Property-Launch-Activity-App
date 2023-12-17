import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/alerts/toast.dart';
import 'package:property_launch_app/utilities/components/other/custom_divider.dart';
import '../../../../utilities/constants/constatnts.dart';
import '../../../../utilities/components/app sheard components/card_textformfield.dart';

class SelectClientSection extends StatelessWidget {
  const SelectClientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 2.h),
        const CustomDivider(),
        SizedBox(height: 10.h),
        CardOfTextFormField(
          controller: CreateNewWishlistCubit.get(context).clientNameController,
          titleName: Constants.clientName,
          textFormLabel: Constants.enterClientName,
        ),
        SizedBox(height: 15.h),
        CardOfTextFormField(
          controller: CreateNewWishlistCubit.get(context).phoneNumberController,
          titleName: Constants.phoneNumber,
          textFormLabel: Constants.enterPhoneNumber,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 15.h),
        CardOfTextFormField(
          controller: CreateNewWishlistCubit.get(context).nationalIDController,
          titleName: Constants.nationalId,
          textFormLabel: Constants.enterNationalId,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 15.h),
        CardOfTextFormField(
          controller:
              CreateNewWishlistCubit.get(context).passportNumberController,
          titleName: Constants.passportNumber,
          textFormLabel: Constants.enterPassportNumber,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 15.h),
        // const Expanded(child: SizedBox()),
        //=========================== continue button ========================
        SizedBox(height: 20.h),
        CustomButton(
          onTap: () {
            if (CreateNewWishlistCubit.get(context)
                    .phoneNumberController
                    .text
                    .isEmpty &&
                CreateNewWishlistCubit.get(context)
                    .nationalIDController
                    .text
                    .isEmpty &&
                CreateNewWishlistCubit.get(context)
                    .passportNumberController
                    .text
                    .isEmpty) {
              showToast(
                  msg:
                      "Please add at least one of this ( phone number or national id or passport number )",
                  state: ToastStates.ERROR);
            } else {
              CreateNewWishlistCubit.get(context).changeToNextStep(index: 1);
            }
          },
          buttonText: Constants.continueText,
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
