import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF000000);

  static const Color sunGold = Color(0xFFF2BC3D);
  static const Color darkGold = Color(0xFFAC7C0C);
  static const Color red = Color(0xFFCB0912);
  static const Color purple = Color(0xFFA823EA);
  static const Color base100 = Color(0xFFA19DAA);
  static const Color base200 = Color(0xFF8C8797);
  static const Color darkGrey = Color(0xFF645F6D);
  static const Color grey = Color(0xFFA19DAA);

  static const Color buttonOutline = Color(0xFF392904);

  static final LinearGradient textGradient = LinearGradient(
    colors: [sunGold, Color(0xFFD93636)],
  );

  static final LinearGradient buttonBorderGradient = LinearGradient(
    colors: [sunGold, buttonOutline],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
