import 'package:flutter/material.dart';

class AppColors {
  static const c10 = Colors.green;       // 10
  static const c20 = Colors.yellow;      // 20
  static const c30 = Colors.lightBlue;   // 30
  static const c40 = Colors.blue;        // 40
  static const c50 = Colors.pink;        // 50
  static const c60 = Colors.purple;      // 60
  static const c70 = Colors.black;       // 70
  static const c80 = Colors.white;       // 80
  static const c90 = Colors.grey;        // 90
  static const c100 = Colors.lime;       // 100

  static const Color text = Colors.black;
}

class AppTextStyles {
  static const counter = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const appBar = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.text,
  );
}


Color getBackgroundColor(int value) {
  if (value <= 10) return AppColors.c10;
  if (value <= 20) return AppColors.c20;
  if (value <= 30) return AppColors.c30;
  if (value <= 40) return AppColors.c40;
  if (value <= 50) return AppColors.c50;
  if (value <= 60) return AppColors.c60;
  if (value <= 70) return AppColors.c70;
  if (value <= 80) return AppColors.c80;
  if (value <= 90) return AppColors.c90;
  return AppColors.c100;
}
