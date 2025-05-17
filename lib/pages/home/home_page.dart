import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/layouts/base_scaffold.dart';
import 'package:sismoney/pages/home/home_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController controller = Get.put(HomePageController());

  Widget emptyHome() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 35,
                  offset: Offset(0, 8),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset('lib/assets/img/empty-box.png', width: 80),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 260,
            child: Text(
              'Você ainda não realizou avaliações',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Obx(() {
        return controller.isEmpty.value
            ? emptyHome()
            : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Suas Avaliações',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 20
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
      }),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF94B9FF),
        onPressed: () {
          controller.isEmpty.value = !controller.isEmpty.value;
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
