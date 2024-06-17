import 'package:flutter/material.dart';

class ColorConstants {
  static const basicChipColours = ChipColors(
    background: Colors.brown,
    text: Colors.white,
  );

  Color common = Colors.brown;
}

class ChipColors {
  final Color background;
  final Color text;

  const ChipColors({required this.background, required this.text});
}
