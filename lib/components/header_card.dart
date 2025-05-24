import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final String text;
  final IconData icon;

  const HeaderCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        child: Row(
          children: [
            Icon(icon, color: Color(0XFF94B9FF), size: 28),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
