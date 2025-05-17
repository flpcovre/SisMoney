import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final double? width;
  final double? heigth;

  const AppIcon({super.key, this.width, this.heigth});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/assets/img/robot.png',
      width: width,
      height: heigth,
    );
  }
}
