// utils/app_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static final Color darkTeal = Color(0xFF004D40);
  static final Color golden = Color(0xFFFFD700);
  static final Color lightGreen = Color(0xFF00FF00);

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkTeal,
    brightness: Brightness.dark,
    primaryColor: darkTeal,
    hintColor: golden,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkTeal,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black.withOpacity(0.8),
      selectedItemColor: golden,
      unselectedItemColor: Colors.grey,
    ),
  );
}
