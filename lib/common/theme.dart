import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
        fontFamily: 'Aktiv Grotesk',
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0.5,
        ),
        brightness: Brightness.dark,
      );
}
