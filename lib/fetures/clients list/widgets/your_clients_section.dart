import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/clients%20list/widgets/clients_data.dart';
import 'package:property_launch_app/utilities/components/other/custom_text.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

class YourClientsSection extends StatelessWidget {
  const YourClientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //first secton of choose campain in layout screen ( LayoutHeaderBody )
        //================= YourClients Section ==================
        SizedBox(height: 5.h),
        //====================== Campaign Features title =======================
        const CustomText(
          text: Constants.yourClients,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10.h),
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const ClientData(),
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemCount: 10,
        ),
      ],
    );
  }
}
