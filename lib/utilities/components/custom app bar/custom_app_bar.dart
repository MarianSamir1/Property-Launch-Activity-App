import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar({required Widget widget, double? toolbarHeight}) => AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: toolbarHeight??75.h,
      leading: const SizedBox(),
      forceMaterialTransparency: true,
      flexibleSpace: widget,
    );
