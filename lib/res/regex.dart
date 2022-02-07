class Regex {
  static Pattern decimalPointRegex() {
    return RegExp(r"([.]*0+)(?!.*\d)");
  }

  static RegExp mathematicalExpressionRegex() {
    return RegExp(r'(\d+)([\/+*-])(\d+)');
  }
}
