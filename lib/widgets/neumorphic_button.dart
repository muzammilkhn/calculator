import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class CustomNeumorphicButton extends StatelessWidget {
  final double? height, width;
  final Widget child;
  final VoidCallback onTap;
  final bool isRounded;
  const CustomNeumorphicButton(
      {Key? key,
      required this.child,
      required this.onTap,
      this.isRounded = true,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      child: SizedBox(
          height: height ?? 13.5.w,
          width: width ?? 13.5.w,
          child: Center(child: child)),
      onPressed: onTap,
      style: buttonStyles(context),
    );
  }

  NeumorphicStyle buttonStyles(BuildContext context) {
    return NeumorphicStyle(
      boxShape: isRounded
          ? const NeumorphicBoxShape.circle()
          : NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
      depth: 3,
      lightSource: ThemeMode.system == ThemeMode.light
          ? LightSource.bottomRight
          : LightSource.topLeft,
      color: Theme.of(context).canvasColor,
    );
  }
}
