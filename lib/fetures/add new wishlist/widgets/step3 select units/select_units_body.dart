import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step3%20select%20units/unit_data_item.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/components/alerts/toast.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
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
                    text: Constants.unitsFilteredBy,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: "Villa - (100 : 200 m2 )",
                    color: ColorManager.black1919.withOpacity(0.7),
                    textOverflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 12.h),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(bottom: 15.h),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => UnitDataItem(index: index),
                    separatorBuilder: (context, index) => SizedBox(height: 5.h),
                    itemCount: 10,
                  ),
                ],
              ),
            ),
          ),
          //================================ add Units To The Wishlist button =====================================
          SizedBox(height: 10.h),
          CustomButton(
            buttonText: Constants.addUnitsToTheWishlist,
            onTap: () {
              if (cubit.unitsIDsList.isEmpty) {
                showToast(msg: "Please Select Unit", state: ToastStates.ERROR);
              } else {
                cubit.changeToNextStep(index: 4);
              }
            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
