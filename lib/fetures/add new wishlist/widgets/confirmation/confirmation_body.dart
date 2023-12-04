import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/components/app%20sheard%20components/unit_data_with_border.dart';
import 'package:property_launch_app/utilities/components/custom%20buttons/custom_button.dart';
import 'package:property_launch_app/utilities/components/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class ConfirmWishlistbody extends StatelessWidget {
  const ConfirmWishlistbody({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const CustomText(
                    text: Constants.client,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 8.h),
                  CustomText(
                    text: "Ahmed Sami Mahmoud",
                    fontWeight: FontWeight.w500,
                    color: ColorManager.black1919.withOpacity(0.7),
                  ),
                  SizedBox(height: 15.h),
                  const CustomText(
                    text: Constants.selectedUnits,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 10.h),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const UnitDataWithBorder(),
                    separatorBuilder: (context, index) => SizedBox(height: 5.h),
                    itemCount: 10,
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.h),
          CustomButton(
            buttonText: Constants.confirm,
            onTap: () {},
          ),
          SizedBox(height: 3.h),
          TextButton(
            onPressed: () {},
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
