import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/data/apis/lanuch_campaign_api.dart';
import 'package:property_launch_app/data/apis/outh_api.dart';
import 'package:property_launch_app/fetures/clients%20list/view/clients_list_screen.dart';
import 'package:property_launch_app/fetures/home/view/home_screen.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/view/units_list_screen.dart';
import 'package:property_launch_app/fetures/login/view/login_screen.dart';
import 'package:property_launch_app/models/campaign_model.dart';
import 'package:property_launch_app/models/response_handler_model.dart';
import 'package:property_launch_app/utilities/components/other/navigation.dart';
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

  logOutFun(context) async {
    await OuthAPI.logOutFunction();
    navigatepushAndRemoveUntil(context: context, widget: const LoginScreen());
  }

  //========================================== APIs ==========================================
  ResponseHandlerClass getAllCampaignsResponce = ResponseHandlerClass();
  CampaignModel? campaignModel;

  getAllCampaignsFun() async {
    campaignModel = null;
    getAllCampaignsResponce = ResponseHandlerClass();
    emit(GetAllCampaignsLoadingState());
    getAllCampaignsResponce = await LaunchCampaignsApi.getAllCampaigns();
    if (getAllCampaignsResponce.errorFlag == false) {
      campaignModel = CampaignModel.fromJson(getAllCampaignsResponce.values);
      emit(GetAllCampaignsSuccessState());
    } else {
      emit(GetAllCampaignsErrorState());
    }
  }
}
