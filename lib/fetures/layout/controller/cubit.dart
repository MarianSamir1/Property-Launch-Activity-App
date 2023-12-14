import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/clients%20list/view/clients_list_screen.dart';
import 'package:property_launch_app/fetures/home/view/home_screen.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/view/units_list_screen.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'states.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayouInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<Widget> taps = [
    const HomeScreen(),
    const ClientsListScreen(),
    const UnitsListScreen(),
  ];

  final List<String> tapsAppBarTitle = [
    Constants.yourDashboard,
    Constants.clientsList,
    Constants.campaignUnits,
  ];

  changeLayoutBody({required int index}) {
    currentIndex = index;
    emit(ChangeLayoutBodySuccessState());
  }

  List<String> campaignList = [
    "Badya Launch Phase 1",
    "Badya Launch Phase 2",
    "Badya Launch Phase 3",
    "Badya Launch Phase 4",
    "Badya Launch Phase 5",
    "Badya Launch Phase 6",
    "Badya Launch Phase 7",
    "Badya Launch Phase 8",
    "Badya Launch Phase 9",
    "Badya Launch Phase 10",
  ];

  int? selectedCampaignIndex;

  selectCampaignFun({required int campaignIndex}) {
    selectedCampaignIndex = campaignIndex;
    emit(SelectedCampaignySuccessState());
  }

  bool addUnitsFiltration = false;
  addUnitsFiltrationFun() {
    addUnitsFiltration = !addUnitsFiltration;
    emit(AddUnitsFiltrationSuccessState());
  }
}
