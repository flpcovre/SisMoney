import 'package:flutter/material.dart';

class BaseFloatingActionButton extends StatelessWidget {
  const BaseFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white70,
      onPressed: () {},
      shape: const CircleBorder(),
      child: const Icon(Icons.add, color: Colors.black, size: 28),
    );
  }
}
