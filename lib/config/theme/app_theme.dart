import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.orange,
  Colors.teal,
  Colors.green,
  Colors.pink,
];

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xFF0F1115),

    primaryColor: const Color(0xFF7C4DFF),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF7C4DFF),
      secondary: Color(0xFF00C2FF),
      surface: Color(0xFF1A1D24),
      error: Color(0xFFFF4D4F),
    ),

    cardColor: const Color(0xFF1A1D24),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Color(0xFF9CA3AF)),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0F1115),
      elevation: 0,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF7C4DFF),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
