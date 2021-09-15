import 'package:flutter/material.dart';

class FourthClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0, 0)
      ..lineTo(size.width * 0.3, 0)
      ..quadraticBezierTo(
          size.width * 0.3, size.height * 0.7, size.width, size.height * 0.7)
      ..lineTo(size.width, size.height)
      //fourth coordinate - bottom left
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
