import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final String text;
  final IconData icon;

  const HeaderCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 28),
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
