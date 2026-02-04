import 'package:flutter/material.dart';

class AppColors {
  static const darkGrey = Color(0XFF635C5C);
  static const darkBlue =  Color(0xFF001351);
}

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'sans-serif',
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.darkGrey,
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'sans-serif',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.darkGrey,
  );
}
