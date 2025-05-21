import 'package:flutter/material.dart';

class BaseDrawerHeader extends StatelessWidget {
  const BaseDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0XFF94B9FF),
      padding: EdgeInsets.symmetric(
        vertical: 24,
      ).copyWith(top: MediaQuery.of(context).padding.top + 24),
      child: Column(
        children: [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage('lib/assets/img/circle-avatar.png'),
          ),
          SizedBox(height: 12),
          Text(
            'Filipe Covre',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            'filipecovre224@gmail.com',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
