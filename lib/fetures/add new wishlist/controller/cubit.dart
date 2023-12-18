import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step1%20clients/clients_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step2%20filteration%20units/filteration_units_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step3%20select%20units/select_units_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step4%20confirmation/confirmation_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/step0%20select%20client/select_client_body.dart';

import 'states.dart';

class CreateNewWishlistCubit extends Cubit<CreateNewWishlistState> {
  CreateNewWishlistCubit() : super(CreateNewWishlistInitialState());

  static CreateNewWishlistCubit get(context) => BlocProvider.of(context);

//============================ clients filteration controllers ========================
  TextEditingController clientNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nationalIDController = TextEditingController();
  TextEditingController passportNumberController = TextEditingController();

  //============================ units filtaration =====================================
  TextEditingController spaceController = TextEditingController();

  List<Widget> addNewWishlistSteps = const [
    SelectClientBody(),
    ClientsBody(),
    FiltrationUnitsBody(),
    SelectUnitsBody(),
    ConfirmWishlistbody()
  ];

  int? passingStep;
  passingStepChangeFun({int? index}) {
    passingStep = index;
    emit(PassingStepChangeSuccessState());
  }

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

  List<int> unitsIDsList = [];

  addUnitsToWishListFun({required int index}) {
    if (unitsIDsList.contains(index)) {
      log("remove Units Index : $index");
      unitsIDsList.remove(index);
    } else {
      log("add Units Index : $index");
      unitsIDsList.add(index);
    }
    log("$unitsIDsList");
    emit(AddUnitsToWishListSuccessState());
  }
int showOrder = 0;
  onReorderFun({
    required oldIndex,
    required newIndex,
  }) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final item = unitsIDsList.removeAt(oldIndex);
    unitsIDsList.insert(newIndex, item);
    for (int i = 0; i <= unitsIDsList.length - 1; i++) {
   //   unitsIDsList[i].rank = showOrder++;
    }
    emit(OnReorderSuccessState());
  }

  deleteUnitsFromWishListFun({required int index}) {
    // if (unitsIDsList.length != 1) {
    //   log("remove Units Index : $index");
    //   unitsIDsList.remove(index);
    // } else {
    //   showToast(
    //     msg: "There must be at least one of units in the list",
    //     state: ToastStates.ERROR,
    //   );
    // }
    emit(DeleteUnitsFromWishListSuccessState());
  }
}
