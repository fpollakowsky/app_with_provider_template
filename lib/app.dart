import 'package:app_with_provider_template/ui/misc/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:app_with_provider_template/app_model.dart';
import 'package:app_with_provider_template/app_routes.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

/// The sCity application.
///
/// Shows [SplashPage] while the upfront initialization is in progress and replaces
/// it with the actual MaterialApp once finished.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppModel>(
      create: (BuildContext context) => AppModel()..onAppStarted(context),
      child: Consumer<AppModel>(
        builder: (BuildContext context, AppModel appModel, _) {
          if (appModel.isInitializing) {
            return Container();
          }
          return _MaterialApp();
        },
      ),
    );
  }
}

class _MaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final AppModel appModel = Provider.of<AppModel>(context);

    return MaterialApp(
      theme: AppTheme.themeData,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: true,
      builder: (BuildContext context, Widget? widget) => ResponsiveBreakpoints.builder(
        child: BouncingScrollWrapper.builder(context, widget!),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),

      //: appModel.isOnboardingFinished ? AppRoutes.main : AppRoutes.onboarding,
      initialRoute: AppRoutes.main,
      onGenerateRoute: AppRouter.onGenerateRoute
    );
  }
}
