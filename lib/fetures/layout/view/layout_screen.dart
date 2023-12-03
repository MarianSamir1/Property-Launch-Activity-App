import 'package:flutter/material.dart';
import 'package:property_launch_app/fetures/layout/widgets/bottom%20navigation/custom_bottom_nav.dart';
import 'package:property_launch_app/fetures/layout/widgets/custom%20app%20bar/app_bar_widget.dart';
import 'package:property_launch_app/utilities/components/custom%20app%20bar/custom_app_bar.dart';
import 'package:property_launch_app/fetures/layout/widgets/floating_action_button.dart';
import 'package:property_launch_app/fetures/layout/widgets/layout_body/body.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(widget: const LayoutAppBarWidget()),
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatingActionButtonCustomization(),
      body: const LayoutBodyWidget(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
