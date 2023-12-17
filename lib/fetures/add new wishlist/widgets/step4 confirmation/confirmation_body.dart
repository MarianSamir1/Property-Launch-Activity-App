import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/unit_data_with_border.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';

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
                    builder: (context, state) => ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Slidable(
                        endActionPane: ActionPane(
                          motion: const StretchMotion(),
                          children: [
                            SlidableAction(
                              backgroundColor: Colors.red,
                              onPressed: (context) {
                                CreateNewWishlistCubit.get(context)
                                    .deleteUnitsFromWishListFun(index: index);
                              },
                              icon: Icons.delete_outline,
                              foregroundColor: Colors.white,
                            )
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "1.",
                              color: ColorManager.primaryColor,
                              fontSize: FontManager.font20,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(width: 8.w),
                            SizedBox(
                              width: 1.sw - 63.5.w,
                              child: const UnitDataWithBorder(),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10.h),
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
          SizedBox(height: 3.h),
          TextButton(
            onPressed: () {
              CreateNewWishlistCubit.get(context).backStep();
            },
            child: const CustomText(
              text: Constants.edit,
              fontWeight: FontWeight.bold,
              color: ColorManager.grey828,
            ),
          ),
        ],
      ),
    );
  }
}
