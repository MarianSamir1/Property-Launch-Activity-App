import 'package:flutter/material.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import '../../../utilities/components/custom app bar/app_bar_body.dart';
import '../../../utilities/components/custom app bar/custom_app_bar.dart';
import '../widgets/add_new_wishlist_body.dart';

class AddNewWishListScreen extends StatelessWidget {
  const AddNewWishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        widget: const ScreensAppBarBody(
          title: Constants.newWishList,
        ),
      ),
      body: const AddNewWishListBody(),
    );
  }
}
