import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Colors.green;
  static const Color negative = Colors.red;
  static const Color background = Colors.white;
  static const Color text = Colors.black;
}

class AppTextStyles {
  static const TextStyle counter = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle appBar = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
}
