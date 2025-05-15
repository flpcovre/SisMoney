import 'package:get/get.dart';
import 'package:sismoney/pages/register/register_page.dart';
import 'package:sismoney/pages/splash/splash_page.dart';

class RouterApp {
  static const String splash = '/splash';
  static const String register = '/register';

  static const String initialRoute = splash;

  static final List<GetPage> getPages = [
    GetPage(
      name: splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: register,
      page: () => RegisterPage(),
    ),
  ];
}
