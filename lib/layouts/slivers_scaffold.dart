import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/app_icon.dart';
import 'package:sismoney/components/base_floating_action_button.dart';
import 'package:sismoney/components/base_bottom_app_bar.dart';
import 'package:sismoney/controllers/income_controller.dart';
import 'package:sismoney/controllers/user_controller.dart';
import 'package:sismoney/models/contracts/authenticatable.dart';

class SliversScaffoldController extends GetxController {
  final IncomeController _incomeController = Get.find<IncomeController>();
  final UserController _userController = Get.find<UserController>();
  Rxn<Authenticatable> user = Rxn<Authenticatable>();

  RxDouble totalBalance = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadBalance();
    loadProfile();
  }

  Future<void> loadBalance() async {
    final balance = await _incomeController.getIncomeBalance();
    totalBalance.value = balance;
  }

  void loadProfile() {
    user.value = _userController.getUser();
  }

  void refreshBalance() {
    loadBalance();
  }
}

class SliversScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final Widget title;
  final VoidCallback? floatingActionButtonOnPressed;
  final SliversScaffoldController controller = Get.put(
    SliversScaffoldController(),
  );

  SliversScaffold({
    super.key,
    required this.slivers,
    required this.title,
    this.floatingActionButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            pinned: false,
            backgroundColor: Colors.blue[300],
            expandedHeight: 280,
            elevation: 2,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Bem-vindo!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Obx(() {
                                final user = controller.user.value;
                                return Text(
                                  user!.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              }),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: AppIcon(width: 48, heigth: 48),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/assets/img/dollar.png',
                              width: 80,
                              height: 80,
                            ),
                            const SizedBox(height: 8),
                            Obx(() {
                              final balance = controller.totalBalance.value;
                              return Text(
                                'R\$ ${balance.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontSize: 36,
                                  color:
                                      balance >= 0
                                          ? Colors.green[200]
                                          : Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            }),
                            const Text(
                              'Balanço Atual',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: false,
            pinned: true,
            backgroundColor: Colors.blue[300],
            expandedHeight: 30,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              centerTitle: false,
              title: title,
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 15)),

          ...slivers,
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BaseFloatingActionButton(
        onPressed: floatingActionButtonOnPressed,
      ),
      bottomNavigationBar: BaseBottomAppBar(),
    );
  }
}
