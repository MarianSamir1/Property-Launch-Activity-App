import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width - 132.w, 0) //line of left
      ..lineTo(size.width - 79.w, 33.h) //line of bottom
      ..lineTo(size.width - 26.w, 0) //line of right
      ..lineTo(size.width, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();

    final path2 = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(size.width - 150.w, 0)
      ..lineTo(size.width - 81.w, 37.h)
      ..lineTo(size.width - 26.w, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(Platform.isAndroid ? path : path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // In this case, we don't need to repaint.
  }
}
