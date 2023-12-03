import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/home/widgets/campaign_features_section.dart';
import 'package:property_launch_app/fetures/home/widgets/your_progress_section.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
      if (LayoutCubit.get(context).selectedCampaignIndex != null) {
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //first secton of choose campain in layout screen ( LayoutHeaderBody )
            //================= Campaign Features Section ==================
            CampaignFeaturesSection(),
            //================= Your Progress ==================
            YourProgressSection(),
          ],
        );
      } else {
        return Container();
      }
    });
  }
}
