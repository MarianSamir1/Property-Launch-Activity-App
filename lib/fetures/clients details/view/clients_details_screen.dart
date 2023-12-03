import 'package:flutter/material.dart';
import 'package:property_launch_app/fetures/clients%20details/widgets/client_details_body.dart';
import 'package:property_launch_app/utilities/components/custom%20app%20bar/app_bar_body.dart';
import 'package:property_launch_app/utilities/components/custom%20app%20bar/custom_app_bar.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

class ClientsDetailsScreen extends StatelessWidget {
  const ClientsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        widget: const ScreensAppBarBody(
          title: Constants.clientDetails,
        ),
      ),
      body: const ClientDetailsBody()
    );
  }
}
