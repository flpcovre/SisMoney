import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class BaseFlushBar {
  static void show(
    BuildContext context, {
    required String message,
    required String type,
    bool isDismissible = true,
  }) { 
    Flushbar(
      margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      borderRadius: BorderRadius.circular(12),
      icon: Container(
        width: 26,
        height: 26,
        padding: EdgeInsets.all(2),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(
          type == 'success' ? Icons.check : Icons.error,
          color: type == 'success' ? Colors.green : Colors.red,
          size: 20,
        ),
      ),
      message: message,
      messageSize: 15,
      messageColor: Colors.black,
      backgroundColor: type == 'success' ? const Color.fromARGB(255, 115, 241, 120) : Colors.red,
      isDismissible: isDismissible,
      duration: const Duration(seconds: 2),
    ).show(context);
  }
}
