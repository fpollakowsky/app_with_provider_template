import 'package:app_with_provider_template/ui/misc/theme/app_color_scheme.dart';
import 'package:flutter/material.dart';

class AppButtonThemes {
  AppButtonThemes._();

  static final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColorScheme.colorScheme.onSecondary,
      backgroundColor: AppColorScheme.colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      elevation: 1,
    ),
  );

  static final TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColorScheme.colorScheme.secondary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      padding: const EdgeInsets.symmetric(horizontal: 16),
    ),
  );

  static final OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColorScheme.colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
    ),
  );
}
