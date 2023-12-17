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
      unitsIDsList.remove(index);
    } else {
      unitsIDsList.add(index);
    }
    emit(AddUnitsToWishListSuccessState());
  }

  deleteUnitsFromWishListFun({required int index}) {
      unitsIDsList.remove(index);
    emit(DeleteUnitsFromWishListSuccessState());
  }
}
