import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final Color? color;
  const CustomCircularProgressIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 20.h,
        width: 30.w,
        child: CircularProgressIndicator(
          color: color ?? ColorManager.primaryColor,
          strokeWidth: 3,
        ),
      ),
    );
  }
}

// class LottieLoadingWidget extends StatelessWidget {
//   final double? height;
//   const LottieLoadingWidget({super.key, this.height});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: height ?? 60.h,
//           child: Lottie.asset(IconPathes.loading),
//         ),
//       ],
//     );
//   }
// }
