import 'package:calculator/res/color_codes.dart';
import 'package:flutter/material.dart';

class Themes {
  static ThemeData darkTheme = ThemeData(
      primaryColor: ColorCodes.WHITE_COLOR,
      brightness: Brightness.dark,
      backgroundColor: const Color(0xFF212121),
      shadowColor: ColorCodes.DARK_SHADOW_COLOR,
      dividerColor: Colors.black12,
      canvasColor: ColorCodes.BLACK_COLOR);

  static ThemeData lightTheme = ThemeData(
    canvasColor: ColorCodes.WHITE_COLOR,
    primaryColor: ColorCodes.BLACK_COLOR,
    shadowColor: Colors.grey[500],
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    dividerColor: Colors.white54,
  );
}
