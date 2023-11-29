import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/header_body.dart';

import '../../controller/states.dart';

class LayoutBodyWidget extends StatelessWidget {
  const LayoutBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = LayoutCubit.get(context);
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) => SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //============= header ==================
                const LayoutHeaderBody(),
                //============= tabs body ================
                cubit.taps[cubit.currentIndex],
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
