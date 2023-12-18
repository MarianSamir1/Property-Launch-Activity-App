import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_launch_app/data/network/shared_preferences/cash_helper.dart';
import 'package:property_launch_app/my_app.dart';

import 'data/network/bloc_observer/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //stop mopile rotation
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await ChashHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
