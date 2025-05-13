import 'package:flutter/material.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Text('Hello World'),
      )
    );
  }
}
