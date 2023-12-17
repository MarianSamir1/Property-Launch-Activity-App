import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:property_launch_app/fetures/layout/view/layout_screen.dart';
import 'package:property_launch_app/fetures/login/controller/states.dart';
import 'package:property_launch_app/utilities/components/alerts/toast.dart';

import '../../../data/apis/outh_api.dart';
import '../../../models/response_handler_model.dart';
import '../../../utilities/components/other/navigation.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  ResponseHandlerClass microsoftLoginResponse = ResponseHandlerClass();
  loginWithMicrosoftFun({required BuildContext context}) async {
    emit(LoginLoadingState());

    microsoftLoginResponse = await OuthAPI.loginWithMicrosoft();
    if (microsoftLoginResponse.errorFlag == false) {
      if (context.mounted) {
        navigatepushAndRemoveUntil(
          context: context,
          widget: const LayoutScreen(),
        );
      }
      showToast(msg: "Login Successfully", state: ToastStates.SUCCRSS);
      emit(LoginSuccessState());
    } else {
      showToast(
        msg: microsoftLoginResponse.errorMessage!,
        state: ToastStates.ERROR,
      );
      emit(LoginErrorState());
    }
  }
}
