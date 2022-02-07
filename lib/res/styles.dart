import 'package:flutter/cupertino.dart';

class Styles {
  static TextStyle textStyles(
      {required Color color,
      required double textSize,
      FontWeight? fontWeight}) {
    return TextStyle(
        color: color,
        fontSize: textSize,
        fontWeight: fontWeight ?? FontWeight.normal);
  }
}
