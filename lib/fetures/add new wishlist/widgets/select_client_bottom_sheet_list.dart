import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';
import '../../../../utilities/components/app sheard components/radio_row_item.dart';

class SelectClientBottomSheetList extends StatelessWidget {
  const SelectClientBottomSheetList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
      builder: (context, state) => SizedBox(
        height: 0.42.sh,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                CreateNewWishlistCubit.get(context)
                    .selectClientFun(clientIndex: index);
                await Future.delayed(const Duration(milliseconds: 200));
                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
              child: RadioRowItem(
                title: CreateNewWishlistCubit.get(context).clientsList[index],
                isSelected:
                    CreateNewWishlistCubit.get(context).selectedClientIndex ==
                        index,
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            color: ColorManager.lightGreyE0E0,
          ),
          itemCount: CreateNewWishlistCubit.get(context).clientsList.length,
        ),
      ),
    );
  }
}
