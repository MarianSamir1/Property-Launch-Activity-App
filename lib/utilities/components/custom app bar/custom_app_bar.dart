import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar({required Widget widget}) => AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 75.h,
      leading: const SizedBox(),
      forceMaterialTransparency: true,
      flexibleSpace: widget,
    );
