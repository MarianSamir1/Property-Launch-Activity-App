import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/states.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/widgets/units_section.dart';

class UnitsListScreen extends StatelessWidget {
  const UnitsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
      if (LayoutCubit.get(context).selectedCampaignIndex != null) {
        return const UnitsSection();
      } else {
        return Container();
      }
    });
  }
}
