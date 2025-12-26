import 'package:flutter/material.dart';

class SnackbarUtils {
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = 
      GlobalKey<ScaffoldMessengerState>();

  static void showError(String message) {
    _show(
      message,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
    );
  }

  static void showSuccess(String message) {
    _show(
      message,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 2),
    );
  }

  static void showInfo(String message) {
    _show(
      message,
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 2),
    );
  }

  static void _show(
    String message, {
    Color backgroundColor = Colors.black,
    Duration duration = const Duration(seconds: 2),
  }) {
    if (scaffoldMessengerKey.currentState != null) {
      scaffoldMessengerKey.currentState!
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: backgroundColor,
            duration: duration,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            action: SnackBarAction(
              label: 'Dismiss',
              textColor: Colors.white,
              onPressed: () {
                scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
              },
            ),
          ),
        );
    }
  }
}
