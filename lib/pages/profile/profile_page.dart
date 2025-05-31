import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/header_card.dart';
import 'package:sismoney/layouts/slivers_scaffold.dart';
import 'package:sismoney/pages/profile/profile_page_controller.dart';

class ProfilePage extends StatelessWidget {
  final ProfilePageController controller = Get.put(ProfilePageController());

  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliversScaffold(
      title: HeaderCard(text: 'Seu Perfil', icon: Icons.person),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                controller.logout();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[200],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text(
                'Sair',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
