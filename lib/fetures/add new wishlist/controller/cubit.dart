import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20units%20step%201/select_units_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/confirmation%20step%202/confirmation_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20client%20step%200/select_client_body.dart';

import 'states.dart';

class CreateNewWishlistCubit extends Cubit<CreateNewWishlistState> {
  CreateNewWishlistCubit() : super(CreateNewWishlistInitialState());

  static CreateNewWishlistCubit get(context) => BlocProvider.of(context);

  List<Widget> addNewWishlistSteps = const [
    SelectClientBody(),
    SelectUnitsBody(),
    ConfirmWishlistbody()
  ];

  int currentStep = 0;

  changeToNextStep({required int index}) {
    currentStep = index;
    emit(ChangeStepSuccessState());
  }

  backStep() {
    if (currentStep != 0) {
      currentStep = currentStep - 1;
      emit(ChangeStepSuccessState());
    }
  }

 List<String> villaOrFlatList = ["All", "Villa", "Flat"];
  int villaOrFlatCurrentIndex = 0;

  isVillaChangeFun({required int villaOrFlat}) {
    villaOrFlatCurrentIndex = villaOrFlat;
    emit(IsVillaChangeFunSuccessState());
  }

  List<String> clientsList = [
    "Mohamed Sami 1",
    "Mohamed Sami 2",
    "Mohamed Sami 3",
    "Mohamed Sami 4",
    "Mohamed Sami 5",
    "Mohamed Sami 6",
    "Mohamed Sami 7",
    "Mohamed Sami 8",
    "Mohamed Sami 9",
    "Mohamed Sami 10",
  ];
  int? selectedClientIndex;

  selectClientFun({required int clientIndex}) {
    selectedClientIndex = clientIndex;
    emit(SelectedClientSuccessState());
  }

  List<int> unitsIDsList = [];

  addUnitsToWishListFun({required int index}) {
    if (unitsIDsList.contains(index)) {
      unitsIDsList.remove(index);
    } else {
      unitsIDsList.add(index);
    }
    emit(AddUnitsToWishListSuccessState());
  }
}
