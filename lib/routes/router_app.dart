import 'package:get/get.dart';
import 'package:sismoney/pages/questions/questions_page.dart';
import 'package:sismoney/pages/splash/splash_page.dart';

class RouterApp {
  static const String splash = '/splash';
  static const String questions = '/questions';

  static const String initialRoute = questions;

  static final List<GetPage> getPages = [
    GetPage(
      name: splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: questions,
      page: () => QuestionsPage()
    )
  ];
}
