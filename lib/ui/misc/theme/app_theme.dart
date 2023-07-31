import 'package:flutter/material.dart';

import 'package:app_with_provider_template/ui/misc/theme/app_text_theme.dart';
import 'package:app_with_provider_template/ui/misc/theme/app_color_scheme.dart';
import 'package:app_with_provider_template/ui/misc/theme/app_button_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData themeData = ThemeData.from(colorScheme: AppColorScheme.colorScheme).copyWith(
    // App bar
    appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: AppColorScheme.colorScheme.onBackground)),

    // Texts
    textTheme: AppTextTheme.textTheme,

    // Buttons
    textButtonTheme: AppButtonThemes.textButtonTheme,
    elevatedButtonTheme: AppButtonThemes.elevatedButtonTheme,
    outlinedButtonTheme: AppButtonThemes.outlinedButtonTheme,

    // Icons
    iconTheme: IconThemeData(color: AppColorScheme.colorScheme.secondary),
  );
}
