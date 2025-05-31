import 'package:flutter/material.dart';

class BaseFloatingActionButton extends StatelessWidget {
  final VoidCallback? onPressed; 

  const BaseFloatingActionButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white70,
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.black, size: 28),
    );
  }
}
