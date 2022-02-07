import 'package:calculator/modules/calculator/widgets/calculator_display_widget.dart';
import 'package:calculator/modules/calculator/widgets/keypad_widget.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bodyWidget());
  }

  bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: const [
          Expanded(
            child: CalculatorDisplayWidget(),
            flex: 2,
          ),
          Expanded(
            child: KeyPadWidget(),
            flex: 7,
          )
        ],
      ),
    );
  }
}
