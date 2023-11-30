import 'package:flutter/material.dart';
import 'package:property_launch_app/fetures/notification/widgets/notification_body.dart';
import 'package:property_launch_app/utilities/components/custom%20app%20bar/custom_app_bar.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import '../../../utilities/components/custom app bar/app_bar_body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        widget: const ScreensAppBarBody(
          title: Constants.messsages,
        ),
      ),
      body: const NotificationBody(),
    );
  }
}
