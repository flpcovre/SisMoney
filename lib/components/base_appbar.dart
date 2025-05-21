import 'package:flutter/material.dart';
import 'package:sismoney/components/app_icon.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppIcon(width: 40),
      centerTitle: true,
      backgroundColor: Color(0XFF94B9FF),
      elevation: 4,
      shadowColor: Color.fromRGBO(0, 0, 0, 0.8),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
