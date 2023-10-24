import 'package:flutter/material.dart';
import 'package:flypto/theme.dart';

class Button {
  static Widget primaryButton(
      {required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      elevation: 0,
      height: 50,
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey)),
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget secondaryButton(
      {required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      elevation: 0,
      height: 50,
      color: xBack,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
