import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/clients%20details/widgets/add_wishlist_row.dart';
import 'package:property_launch_app/fetures/clients%20details/widgets/client_list_tile.dart';
import 'package:property_launch_app/fetures/clients%20details/widgets/wish_list_contanier_status.dart';

class ClientDetailsBody extends StatelessWidget {
  const ClientDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //======================== Client List Tile ====================================
        const ClientListTile(),
        //===============================================================================
        Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              //=================== add WishList Row =====================================
              const AddWishListRow(),
              //=================== WishList Contanier Status ListView ===================
              SizedBox(height: 10.h),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    const WishListContanierStatus(),
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemCount: 3,
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ]),
    );
  }
}
