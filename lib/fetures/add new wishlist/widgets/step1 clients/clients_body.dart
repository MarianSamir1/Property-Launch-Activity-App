import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step1%20clients/client_card.dart';

class ClientsBody extends StatelessWidget {
  const ClientsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child:ListView.separated(
        itemBuilder: (context, index) => const ClientCard(),
        separatorBuilder: (context, index) => SizedBox(height: 10.h),
        itemCount: 5,
      ),
    );
  }
}
