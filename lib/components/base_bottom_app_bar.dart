import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/routes/router_app.dart';

class BaseBottomAppBar extends StatelessWidget {
  const BaseBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 7,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(onPressed: () { Get.toNamed(RouterApp.home); }, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),

          SizedBox(width: 40),

          IconButton(onPressed: () { Get.toNamed(RouterApp.profile); }, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
