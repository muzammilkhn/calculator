import 'package:calculator/modules/calculator/views/calculator_screen.dart';
import 'package:calculator/res/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Constants.CALCULATOR_ROUTE:
        return MaterialPageRoute(
            builder: (context) => const CalculatorScreen());

      default:
        return null;
    }
  }
}
