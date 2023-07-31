import 'dart:async';

import 'package:flutter/foundation.dart';

abstract class BaseViewModel extends ChangeNotifier {
  FutureOr<void> onViewStarted();
}
