import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff41B8EA)),
    useMaterial3: true,
    fontFamily: 'Numans',
  );
}
