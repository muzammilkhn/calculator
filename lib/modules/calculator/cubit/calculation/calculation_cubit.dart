import 'package:bloc/bloc.dart';
import 'package:calculator/modules/calculator/cubit/calculation/calculation_handler.dart';

part 'calculation_state.dart';

class CalculationCubit extends Cubit<CalculationState> {
  CalculationCubit() : super(CalculationState(answer: 0));

  resetValues() {
    emit(CalculationState(answer: 0));
  }

  evaluateExpression({required String expression}) => emit(CalculationState(
      answer:
          CalculationsHandler().caculateMathematicalExpression(expression)));

  evaluatePercentage({required String expression}) => emit(CalculationState(
      answer: CalculationsHandler().calculatePercentage(expression)));

      
}
