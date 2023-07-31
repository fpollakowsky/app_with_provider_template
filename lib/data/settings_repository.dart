import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  SettingsRepository(SharedPreferences preferences)
      : _preferences = preferences;

  static const String _onboardingFinishedKey = 'onboarding_finished';

  final SharedPreferences _preferences;

  bool isOnboardingFinished() {
    return _preferences.getBool(_onboardingFinishedKey) ?? false;
  }

  Future<void> setOnboardingFinished(bool onboardingFinished) async {
    await _preferences.setBool(_onboardingFinishedKey, onboardingFinished);
  }
}
