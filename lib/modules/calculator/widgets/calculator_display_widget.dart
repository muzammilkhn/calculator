import 'package:calculator/modules/calculator/cubit/calculation/calculation_cubit.dart';
import 'package:calculator/res/styles.dart';
import 'package:calculator/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CalculatorDisplayWidget extends StatelessWidget {
  const CalculatorDisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculationCubit, CalculationState>(
        builder: (context, state) {
      return Container(
        margin: EdgeInsets.only(bottom: 5.0.w),
        alignment: Alignment.bottomRight,
        child: Text(
          Utils.removeTrailingZeros(state.answer.toString()),
          style: Styles.textStyles(
            color: Theme.of(context).primaryColor,
            textSize: 50.0.sp,
          ),
        ),
      );
    });
  }
}
