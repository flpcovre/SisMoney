import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/routes/router_app.dart';

class BaseDrawerNavigation extends StatelessWidget {
  const BaseDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () {
            Get.toNamed(RouterApp.home);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person_2_outlined),
          title: const Text('Perfil'),
          onTap: () {},
        ),
      ],
    );
  }
}
