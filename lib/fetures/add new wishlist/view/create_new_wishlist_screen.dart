import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/delete_dialog.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import '../../../utilities/components/alerts/alert_dialog.dart';
import '../../../utilities/components/custom app bar/app_bar_body.dart';
import '../../../utilities/components/custom app bar/custom_app_bar.dart';

class CreateNewWishlistScreen extends StatefulWidget {
  final int? step;
  const CreateNewWishlistScreen({super.key, this.step});

  @override
  State<CreateNewWishlistScreen> createState() =>
      _CreateNewWishlistScreenState();
}

class _CreateNewWishlistScreenState extends State<CreateNewWishlistScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.step != null) {
      CreateNewWishlistCubit.get(context).currentStep = widget.step!;
      // CreateNewWishlistCubit.get(context).selectedClientIndex is the client that passing it from clients details ;
    } else {
      CreateNewWishlistCubit.get(context).currentStep = 0;
      CreateNewWishlistCubit.get(context).selectedClientIndex = null;
    }
    CreateNewWishlistCubit.get(context).unitsIDsList = [];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
      builder: (context, state) =>
          //=================================== Will pop scope =======================================
          WillPopScope(
        onWillPop: () async {
          if (widget.step != null &&
              CreateNewWishlistCubit.get(context).currentStep != 2) {
            alertDialog(
              context: context,
              widget: DiscardWishlistDialog(
                onDelete: () {},
              ),
            );
          } else if (CreateNewWishlistCubit.get(context).currentStep == 0) {
            alertDialog(
              context: context,
              widget: DiscardWishlistDialog(
                onDelete: () {},
              ),
            );
          } else {
            CreateNewWishlistCubit.get(context).backStep();
          }
          return false;
        },
        child: Scaffold(
          //=================================== App Bar =============================================
          appBar: customAppBar(
            widget: ScreensAppBarBody(
              title: Constants.newWishList,
              onTap: () {
                if (widget.step != null &&
                    CreateNewWishlistCubit.get(context).currentStep != 2) {
                  alertDialog(
                    context: context,
                    widget: DiscardWishlistDialog(
                      onDelete: () {},
                    ),
                  );
                } else if (CreateNewWishlistCubit.get(context).currentStep ==
                    0) {
                  alertDialog(
                    context: context,
                    widget: DiscardWishlistDialog(
                      onDelete: () {},
                    ),
                  );
                } else {
                  CreateNewWishlistCubit.get(context).backStep();
                }
              },
            ),
          ),
          //========================================= body =================================================
          body: CreateNewWishlistCubit.get(context).addNewWishlistSteps[
              CreateNewWishlistCubit.get(context).currentStep],
        ),
      ),
    );
  }
}
