import 'package:flutter/material.dart';

class FifthClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x(double a) => size.width * a;
    double y(double a) => size.height * a;
    var path = Path()
      ..lineTo(0, 0)
      ..lineTo(x(0.2), 0)
      ..lineTo(x(0.4), y(0.4))
      ..cubicTo(x(0.5), y(0.5), 0, y(1), x(0.6), y(0.6))
      ..lineTo(x(1), y(1))
      ..lineTo(0, y(1))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
