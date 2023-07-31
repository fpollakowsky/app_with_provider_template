import 'package:flutter/material.dart';

import 'package:app_with_provider_template/ui/misc/theme/app_color_scheme.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 32,
        color: AppColorPalette.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 2
    ),

    displayMedium: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 24,
        color: AppColorPalette.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 2
    ),

    displaySmall: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 20,
        color: AppColorPalette.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 2
    ),
  );
}
