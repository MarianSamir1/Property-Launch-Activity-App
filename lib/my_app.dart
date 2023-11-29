import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/units%20list/controller/cubit.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';

import 'fetures/login/view/login_screen.dart';

final navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LayoutCubit()),
        BlocProvider(create: (context) => UnitsListCubit()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 533),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          title: 'Property Launch App',
          debugShowCheckedModeBanner: false,
          builder: ((context, child) {
            return MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: const TextScaler.linear(1.0)),
              child: child!,
            );
          }),
          theme: ThemeData(fontFamily: Constants.fontFamily),
          home: const LoginScreen(),
        ),
      ),
    );
  }
}
