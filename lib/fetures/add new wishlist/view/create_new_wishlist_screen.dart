import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import '../../../utilities/components/custom app bar/app_bar_body.dart';
import '../../../utilities/components/custom app bar/custom_app_bar.dart';

class CreateNewWishlistScreen extends StatelessWidget {
  const CreateNewWishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
      builder: (context, state) => Scaffold(
        appBar: customAppBar(
          widget: ScreensAppBarBody(
            title: Constants.newWishList,
            onTap: () {
              if (CreateNewWishlistCubit.get(context).currentStep == 0) {
              } else {
                CreateNewWishlistCubit.get(context).backStep();
              }
            },
          ),
        ),
        body: CreateNewWishlistCubit.get(context)
            .addNewWishlistSteps[CreateNewWishlistCubit.get(context).currentStep],
      ),
    );
  }
}
