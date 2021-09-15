import 'package:flutter/material.dart';

class ThirdClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      //first coordinate - top left
      ..lineTo(0, 0)
      //second coordinate
      ..lineTo(size.width * 0.2, 0)
      ..lineTo(size.width * 0.3, size.height * 0.3)
      ..lineTo(size.width * 0.4, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
