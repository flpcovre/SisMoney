import 'package:flutter/material.dart';
import 'package:sismoney/components/base_flushbar.dart';

class BaseDialog {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required String message,
    String? type,
    VoidCallback? onConfirm,
    String confirmText = 'Sim',
    String cancelText = 'Não',
    String okText = 'OK',
    IconData? icon,
    Color iconColor = Colors.blue,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    bool barrierDismissible = true,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              if (icon != null)
                Center(child: Icon(icon, color: iconColor, size: 28)),
              const SizedBox(width: 15),
              Text(
                title,
                style: titleStyle ?? Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          content: Text(message, style: messageStyle),
          actionsAlignment: MainAxisAlignment.end,
          actions: <Widget>[
            if (type == 'choice') ...[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  textStyle: WidgetStateProperty.all<TextStyle>(
                    const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                child: Text(cancelText),
              ),
              TextButton(
                onPressed: () async {
                  try {
                    if (onConfirm != null) {
                      await Future.sync(onConfirm);
                    }
                    Navigator.of(context).pop();
                  } catch (e) {
                    Navigator.of(context).pop();
                      BaseFlushBar.show(
                        context,
                        message: '$e', 
                        type: 'error',
                        isDismissible: true
                      );
                  }
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  textStyle: WidgetStateProperty.all<TextStyle>(
                    const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                child: Text(confirmText),
              ),
            ] else ...[
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(okText),
              ),
            ],
          ],
        );
      },
    );
  }
}
