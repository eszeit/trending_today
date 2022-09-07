import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF000000);

  static const Color sunGold = Color(0xFFF2BC3D);
  static const Color red = Color(0xFFD93636);
  static const Color base100 = Color(0xFFA19DAA);
  static const Color base200 = Color(0xFF8C8797);
  static const Color darkGrey = Color(0xFF645F6D);
  static const Color grey = Color(0xFFA19DAA);

  static const Color buttonOutline = Color(0xFF392904);

  static final LinearGradient textGradient = LinearGradient(
    colors: [sunGold, red],
  );

  static final LinearGradient buttonBorderGradient = LinearGradient(
    colors: [sunGold, buttonOutline],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
