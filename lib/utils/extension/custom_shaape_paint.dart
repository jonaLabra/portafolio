import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class CustomBackgroundPainter extends CustomPainter {
  final double? radius;
  final Color? startColor;
  final Color? endColor;

  CustomBackgroundPainter(
      {required this.radius, required this.startColor, required this.endColor});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        const Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor!).withLightness(0.8).toColor(),
      endColor!
    ]);

    var pathRight = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius!, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius!)
      ..lineTo(size.width, radius!)
      ..quadraticBezierTo(size.width, 0, size.width - radius!, 0)
      ..lineTo(size.width - 1.5 * radius!, 0)
      ..quadraticBezierTo(-radius!, 2 * radius!, 0, size.height)
      ..close();

    canvas.drawPath(pathRight, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
