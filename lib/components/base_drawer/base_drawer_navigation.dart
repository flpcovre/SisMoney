import 'package:flutter/material.dart';

class BaseDrawerNavigation extends StatelessWidget {
  const BaseDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () {},
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
