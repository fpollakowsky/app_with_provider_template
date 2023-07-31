import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fimber/flutter_fimber.dart';

import 'package:app_with_provider_template/app.dart';

class AppConfig {
  static const String apiURL = String.fromEnvironment('API_URL');
  static const String apiKey = String.fromEnvironment('API_KEY');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  _setupLogging();

  runApp(const App());
}

void _setupLogging() {
  if (kDebugMode) {
    final List<String> logLevels = List.of(DebugTree.defaultLevels)..add('V');
    Fimber.plantTree(DebugTree(logLevels: logLevels));
  }
}