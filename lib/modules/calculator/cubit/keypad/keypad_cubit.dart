import 'package:bloc/bloc.dart';
import 'package:calculator/res/strings.dart';

part 'keypad_state.dart';

class KeypadCubit extends Cubit<KeypadState> {
  String _oldExpression = "";
  KeypadCubit() : super(KeypadState(expression: ""));

  updateExpression({expression}) {
    _oldExpression = _oldExpression + expression;

    emit(KeypadState(expression: _oldExpression));
  }

  toggleSign() {
    if (_oldExpression.isNotEmpty) {
      if (!(_oldExpression.contains(Strings.PLUS)) &&
          !(_oldExpression.contains(Strings.MINUS))) {
        if (_oldExpression[0] != Strings.MINUS) {
          _oldExpression = Strings.MINUS + _oldExpression;
          emit(KeypadState(expression: _oldExpression));
        }
      } else {
        List<String> chars = _oldExpression.split("");
        for (int i = chars.length - 1; i >= 0; i--) {
          if (chars[i] == Strings.PLUS) {
            chars[i] = Strings.MINUS;
            break;
          } else if (chars[i] == Strings.MINUS) {
            if (i == 0) {
              chars[i] = "";
            } else {
              chars[i] = Strings.PLUS;
            }
            break;
          }
        }
        _oldExpression = "";
        for (var char in chars) {
          _oldExpression = _oldExpression + char;
        }

        emit(KeypadState(expression: _oldExpression));
      }
    }
  }

  resetExpression() {
    _oldExpression = "";
    emit(KeypadState(expression: _oldExpression));
  }

  String getExpression() {
    return _oldExpression;
  }
}
