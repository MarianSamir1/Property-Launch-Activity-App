import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20units/villa_or_flat.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/custom_bottom_sheet.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

import '../../../../utilities/components/app sheard components/select_client_bottom_sheet_row_item.dart';
import '../../../../utilities/components/custom_svg_picture.dart';
import '../../../../utilities/constants/constatnts.dart';

class SelectUnitsBody extends StatelessWidget {
  const SelectUnitsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
              TextButton(
                onPressed: () {
                  openBottomSheet(
                    context,
                    bottomSheetHeader: Constants.selectCampaign,
                    widget: const SelectClientBottomSheetRowItem(),
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
          //=========================== select units ===========================
          SizedBox(height: 10.h),
          const CustomText(
            text: Constants.selectUnits,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 10.h),
          const VillaOrFlat(),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 15.h),
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  border: Border.all(
                    color: ColorManager.grey828,
                  ),
                ),
                child: Row(
                  children: [
                    const CustomSvgPicture(
                        svgImage: IconPathes.rhmobusFilledSelected),
                    // const CustomSvgPicture(
                    //     svgImage: IconPathes.unSlectedSquire),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: "02/002-0D",
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: 3.h),
                        const CustomText(
                          text: "\$14,816,000",
                          color: ColorManager.grey828,
                        )
                      ],
                    ),
                    const Spacer(),
                    const CustomText(
                      text: "3 Reserved",
                      color: ColorManager.primaryColor,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 5.h),
              itemCount: 10,
            ),
          ),
          //=====================================================================
          SizedBox(height: 10.h),
          CustomButton(
            buttonText: Constants.addUnitsToTheWishlist,
            onTap: () {
              CreateNewWishlistCubit.get(context).changeToNextStep(index: 2);
            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
