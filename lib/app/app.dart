import 'package:calculator/app/app_routes.dart';
import 'package:calculator/modules/calculator/cubit/calculation/calculation_cubit.dart';
import 'package:calculator/modules/calculator/cubit/keypad/keypad_cubit.dart';
import 'package:calculator/theme/themes.dart';
import 'package:calculator/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CalculationCubit()),
          BlocProvider(create: (context) => KeypadCubit()),
        ],
        child: MaterialApp(
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerate,
          title: Strings.APP_NAME,
        ),
      );
    });
  }
}
