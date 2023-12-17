import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class UnitsListCubit extends Cubit<UnitsListState> {
  UnitsListCubit() : super(UnitsListInitialState());

  static UnitsListCubit get(context) => BlocProvider.of(context);

  TextEditingController spaceController = TextEditingController();

  List<String> villaOrFlatList = ["All", "Villa", "Flat"];
  int villaOrFlatCurrentIndex = 0;

  isVillaChangeFun({required int villaOrFlat}) {
    villaOrFlatCurrentIndex = villaOrFlat;
    emit(IsVillaChangeFunSuccessState());
  }
  //  List<String> finishingTypeList = ["Fully finished", "Core & Shell", "Semi finished"];
  // int finishingTypeCurrentIndex = 0;

  // finishingTypeChangeFun({required int finishingTypeIndex}) {
  //   finishingTypeCurrentIndex = finishingTypeIndex;
  //   emit(FinishingTypeChangeFunSuccessState());
  // }
}
