import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/routes/router_app.dart';

class BaseDrawerBottom extends StatelessWidget {
  const BaseDrawerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: const Icon(Icons.logout_outlined),
        title: const Text('Sair'),
        onTap: () {
          Get.toNamed(RouterApp.login);
        },
      ),
    );
  }
}
