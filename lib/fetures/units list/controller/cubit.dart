import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class UnitsListCubit extends Cubit<UnitsListState> {
  UnitsListCubit() : super(UnitsListInitialState());

  static UnitsListCubit get(context) => BlocProvider.of(context);

  String villaOrFlatt = "Villa";

  isVillaChangeFun({required String villaOrFlat}) {
    villaOrFlatt = villaOrFlat;
    emit(IsVillaChangeFunSuccessState());
  }
}
