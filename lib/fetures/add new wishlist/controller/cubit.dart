import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20units/select_units_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/confirmation/confirmation_body.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/widgets/select%20client/select_client_body.dart';

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

  String villaOrFlatt = "Villa";

  isVillaChangeFun({required String villaOrFlat}) {
    villaOrFlatt = villaOrFlat;
    emit(IsVillaChangeFunSuccessState());
  }
}
