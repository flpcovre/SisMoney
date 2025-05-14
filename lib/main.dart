import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/routes/router_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SisMoney',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF94B9FF)),
        fontFamily: 'JetBrains Mono',
      ),
      initialRoute: RouterApp.initialRoute,
      getPages: RouterApp.getPages,
    );
  }
}
