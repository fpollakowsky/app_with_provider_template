import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/settings_repository.dart';


/// Convenience wrapper around GetIt.
class ServiceLocator {
  factory ServiceLocator() => _instance ??= ServiceLocator._();

  ServiceLocator._();

  static ServiceLocator? _instance;

  Future<void> registerDependencies(BuildContext context) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    GetIt.I.registerSingleton<AssetBundle>(DefaultAssetBundle.of(context));

    // API
    //GetIt.I.registerLazySingleton(() => SCityApiClient(baseUrl: AppConfig.backendURL, apiKey: AppConfig.apiKey,));

    // DAOs

    // Repositories
    GetIt.I.registerLazySingleton(() => SettingsRepository(preferences));

    return GetIt.I.allReady();
  }

  T? call<T extends Object>() => GetIt.I.call<T>();

  T? get<T extends Object>() => GetIt.I.call<T>();
}
