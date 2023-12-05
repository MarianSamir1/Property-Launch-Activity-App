import 'package:flutter/material.dart';
import 'package:property_launch_app/utilities/components/other/custom_svg_picture.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/constants/icons_pathes.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import 'package:property_launch_app/utilities/styles/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientListTile extends StatelessWidget {
  const ClientListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.top,
      leading: Container(
        padding: EdgeInsets.all(15.r),
        color: ColorManager.lightGreyE0E0,
        child: const CustomSvgPicture(svgImage: IconPathes.person),
      ),
      title: CustomText(
        text: "Ahmed Sami Mahmoud",
        fontWeight: FontWeight.bold,
        fontSize: FontManager.font18,
        maxLines: 1,
        textOverflow: TextOverflow.ellipsis,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomText(
            text: "+20 1223142255",
            fontWeight: FontWeight.w500,
            color: ColorManager.black.withOpacity(0.7),
            fontSize: FontManager.font18,
          ),
          InkWell(
            onTap: (){},
            child: const CustomText(
              text: Constants.call,
              fontWeight: FontWeight.w500,
              color: ColorManager.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
