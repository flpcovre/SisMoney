import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget body;

  const GradientScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFCDFFD8), Color(0xFF94B9FF)],
              ),
            ),
          ),
          body,
        ],
      ),
    );
  }
}
