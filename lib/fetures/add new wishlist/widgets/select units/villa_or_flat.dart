import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import '../../../../utilities/components/app sheard components/villa_or_flat_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VillaOrFlat extends StatelessWidget {
  const VillaOrFlat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
      builder: (context, state) => Row(
        children: [
          VillaOrFlatWidget(
              containerTitle: "Villa",
              currentValue: CreateNewWishlistCubit.get(context).villaOrFlatt,
              onTap: () {
                CreateNewWishlistCubit.get(context).isVillaChangeFun(
                  villaOrFlat: "Villa",
                );
              }),
          SizedBox(width: 10.w),
          VillaOrFlatWidget(
            containerTitle: "Flat",
            currentValue: CreateNewWishlistCubit.get(context).villaOrFlatt,
            onTap: () {
              CreateNewWishlistCubit.get(context).isVillaChangeFun(
                villaOrFlat: "Flat",
              );
            },
          ),
        ],
      ),
    );
  }
}
