import 'package:app_with_provider_template/service_locator.dart';
import 'package:flutter/material.dart';

import 'package:app_with_provider_template/data/settings_repository.dart';
import 'package:app_with_provider_template/initialization_exception.dart';

/// 'View model'-like state class for the application.
///
/// On first build, the app calls [onAppStarted()] which triggers all upfront initialization.
/// Once all initialization is done AND the minimum initialization duration has passed,
/// the initialization is marked as finished. The actual app is now ready to run.
class AppModel extends ChangeNotifier {
  static const int _minInitializationDurationInSecs = 3;
  bool _initializationInProgress = true;
  bool _onboardingFinished = false;

  bool get isInitializing => _initializationInProgress;

  bool get isOnboardingFinished => _onboardingFinished;

  Future<void> onAppStarted(BuildContext context) async {
    await Future.wait([
      Future.delayed(const Duration(seconds: _minInitializationDurationInSecs)),
      _initializeApp(context),
    ], eagerError: true);

    _initializationInProgress = false;
    notifyListeners();
  }

  Future<void> _initializeApp(BuildContext context) async {
    await _initializeDependencies(context);
    await _checkOnboarding();
    await _loadBackendData(context);
  }

  Future<void> _initializeDependencies(BuildContext context) async {
    try {
      await ServiceLocator().registerDependencies(context);
    } catch (e) {
      throw InitializationException('Failed to initialize dependencies.', e);
    }
  }

  Future<void> _checkOnboarding() async {
    _onboardingFinished =
        ServiceLocator().get<SettingsRepository>()!.isOnboardingFinished();
  }

  Future<void> _loadBackendData(BuildContext context) async {
    //await Provider.generalGet("devices", context);
  }
}
