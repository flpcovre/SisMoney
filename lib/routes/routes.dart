import 'package:flutter/material.dart';
import 'package:sismoney/pages/splash/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String initialRoute = splash;

  static Map<String, WidgetBuilder> get routes => {
      splash: (context) => SplashScreen(),
  };
}