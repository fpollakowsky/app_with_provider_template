import 'package:app_with_provider_template/ui/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static const String main = '/';
  static const String home = '/home';
}

class AppRouter {
  AppRouter._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.main:
        return MaterialPageRoute(builder: (BuildContext context) => const HomePage());

      default:
        throw ArgumentError.value(settings.name, null, 'Unexpected home route name.');
    }
  }
}