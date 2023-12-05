import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20client%20step%200/select_client_section.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/header_body.dart';
import '../../../layout/controller/cubit.dart';
import '../../../layout/controller/states.dart';

class SelectClientBody extends StatelessWidget {
  const SelectClientBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LayoutHeaderBody(),
          //======================== select client section =============================
          BlocBuilder<LayoutCubit, LayoutState>(
            builder: (context, state) {
              if (LayoutCubit.get(context).selectedCampaignIndex != null) {
                return const SelectClientSection();
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
