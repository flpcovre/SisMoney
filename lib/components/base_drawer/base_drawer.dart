import 'package:flutter/material.dart';
import 'package:sismoney/components/base_drawer/base_drawer_bottom.dart';
import 'package:sismoney/components/base_drawer/base_drawer_header.dart';
import 'package:sismoney/components/base_drawer/base_drawer_navigation.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          BaseDrawerHeader(),

          Expanded(
            child: BaseDrawerNavigation()
          ),

          const Divider(color: Colors.black54),

          BaseDrawerBottom()
        ],
      ),
    );
  }
}
