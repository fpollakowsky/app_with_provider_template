import 'package:flutter/widgets.dart';

import 'base_view_model.dart';

/// Contract mixing for all app pages.
mixin BasePage on Widget {}

/// Base class for our stateless pages.
abstract class StatelessPage<T extends BaseViewModel> extends StatelessWidget with BasePage {
  const StatelessPage({super.key});

  T createViewModel(BuildContext context);
}

/// Base class for our stateful pages.
abstract class StatefulPage extends StatefulWidget with BasePage {
  const StatefulPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return createPageState();
  }

  PageState createPageState();
}

/// Base state class for our stateful pages.
abstract class PageState<P extends StatefulPage, VM extends BaseViewModel> extends State<P> {
  VM createViewModel(BuildContext context);
}
