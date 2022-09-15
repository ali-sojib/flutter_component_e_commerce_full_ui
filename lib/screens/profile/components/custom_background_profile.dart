import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class CustomPaintBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width * 0.50, size.height * 0.77),
        Offset(size.width * 0.50, size.height * 0.00),
        [const Color.fromRGBO(246, 121, 82, 0), AppColors.scaffoldBackground],
        [0.00, 1.0]);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.6208333);
    path0.quadraticBezierTo(size.width * -0.0058125, size.height * 0.7636389,
        size.width * 0.0696953, size.height * 0.7643194);
    path0.cubicTo(
        size.width * 0.1996953,
        size.height * 0.7658889,
        size.width * 0.3634219,
        size.height * 0.6495139,
        size.width * 0.5103281,
        size.height * 0.5545278);
    path0.cubicTo(
        size.width * 0.6582422,
        size.height * 0.4660417,
        size.width * 0.8343984,
        size.height * 0.4519444,
        size.width * 0.9324531,
        size.height * 0.5625417);
    path0.quadraticBezierTo(size.width * 0.9877891, size.height * 0.6334722,
        size.width, size.height * 0.6629444);
    path0.lineTo(size.width, size.height * 0.0020694);
    path0.lineTo(size.width * 0.0015625, size.height * 0.0013889);
    path0.lineTo(0, size.height * 0.6208333);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
