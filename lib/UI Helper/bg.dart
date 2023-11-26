import 'package:flutter/material.dart';

class MyGradients {
  static Gradient linearGradient({
    AlignmentGeometry begin = Alignment.topCenter,
    AlignmentGeometry end = Alignment.bottomCenter,
    List<Color> colors = const [
      Color(0xff034264),
      Color(0xff329EFD),
      Color(0xffB7E6F6)
    ],
    List<double>? stops,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: colors,
      stops: stops,
    );
  }
}
