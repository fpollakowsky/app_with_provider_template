import 'package:flutter/material.dart';

class AppColorPalette {
  AppColorPalette._();

  static const Color white = Color(0xFFFFFFFF);

  static const Color blue = Color(0xFF0C1A32);
  static const Color blueLight = Color(0xFF36405C);
  static const Color blueDark = Color(0xFF00000C);

  static const Color white10 = Color(0xFFE6EBEE);
  static const Color white15 = Color(0xFFCCD8DF);
  static const Color white30 = Color(0xFFA3B8C3);

  static const Color error1 = Color(0xFFD2001E);

  static const Color orangeNormal = Color(0xFFFFA000);
  static const Color orangeDark = Color(0xFFC67100);
  static const Color orangeLight = Color(0xFFFFD149);
}

class AppColorScheme {
  AppColorScheme._();

  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,

    // Backgrounds
    background: AppColorPalette.white10,
    onBackground: AppColorPalette.white,
    surface: AppColorPalette.white,
    onSurface: AppColorPalette.blue,

    // e.g. AppBar Background Color
    primary: AppColorPalette.blue,
    onPrimary: AppColorPalette.white,

    // Accent color (CTA buttons, etc.)
    onSecondary: AppColorPalette.white,

    // Errors
    error: AppColorPalette.error1,
    onError: AppColorPalette.white,
    secondary: AppColorPalette.blue,
  );
}
