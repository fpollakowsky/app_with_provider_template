import 'dart:async';

import 'package:flutter/material.dart';
import 'package:app_with_provider_template/ui/misc/pages/base_view_model.dart';
import 'package:app_with_provider_template/data/settings_repository.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel({
    required SettingsRepository settingsRepository,
    required BuildContext context,
  })  : _context = context;

  final BuildContext _context;

  BuildContext get context {
    return _context;
  }

  @override
  FutureOr<void> onViewStarted() {

  }
}
