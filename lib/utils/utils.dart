import 'package:calculator/res/regex.dart';

class Utils {
  static String removeTrailingZeros(String n) {
    return n.replaceAll(Regex.decimalPointRegex(), "");
  }

  static bool checkMathematicalExpression(String expression) {
    return Regex.mathematicalExpressionRegex().hasMatch(expression);
  }
}
