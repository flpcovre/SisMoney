import 'package:flutter/material.dart';
import 'package:sismoney/components/app_icon.dart';
import 'package:sismoney/components/base_floating_action_button.dart';
import 'package:sismoney/components/base_bottom_app_bar.dart';

class SliversScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final Widget title;
  final VoidCallback? floatingActionButtonOnPressed;

  const SliversScaffold({
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
                            children: const [
                              Text(
                                'Bem-vindo!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Filipe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: AppIcon(width: 48, heigth: 48),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ), // Espaço entre a row e o conteúdo central
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
                            const Text(
                              'R\$ 2.700,00',
                              style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
              title: title
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 15)),

          ...slivers,
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BaseFloatingActionButton(
        onPressed: floatingActionButtonOnPressed
      ),
      bottomNavigationBar: BaseBottomAppBar(),
    );
  }
}
