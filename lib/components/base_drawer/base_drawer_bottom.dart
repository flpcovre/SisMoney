import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/controllers/auth_controller.dart';
import 'package:sismoney/routes/router_app.dart';

class BaseDrawerBottom extends StatelessWidget {
  BaseDrawerBottom({super.key});
  final _authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: const Icon(Icons.logout_outlined),
        title: const Text('Sair'),
        onTap: () {
          _authController.signOut();
          Get.toNamed(RouterApp.login);
        },
      ),
    );
  }
}
