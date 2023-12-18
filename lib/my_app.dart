import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_launch_app/data/network/shared_preferences/cash_helper.dart';
import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/controller/cubit.dart';
import 'package:property_launch_app/fetures/campaign%20units%20list/controller/cubit.dart';
import 'package:property_launch_app/fetures/layout/view/layout_screen.dart';
import 'package:property_launch_app/utilities/constants/chash_keys.dart';
import 'package:property_launch_app/utilities/constants/constatnts.dart';
import 'package:property_launch_app/utilities/styles/colors.dart';

import 'fetures/login/view/login_screen.dart';

final navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit()..getAllCampaignsFun(),
        ),
        BlocProvider(create: (context) => UnitsListCubit()),
        BlocProvider(create: (context) => CreateNewWishlistCubit()),
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
          theme: ThemeData(
            fontFamily: Constants.fontFamily,
            scaffoldBackgroundColor: ColorManager.white,
          ),
          home: ChashHelper.get(key: CasheKeys.accessToken) == null
              ? const LoginScreen()
              : const LayoutScreen(),
          navigatorKey: navKey,
        ),
      ),
    );
  }
}
