import 'package:flutter/material.dart';
import 'package:uniride/core/app_routes/app_router.dart';
import 'package:uniride/core/app_routes/routes.dart';
import 'package:uniride/core/util/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:uniride/l10n/app_localizations.dart';
import 'core/providers/app_language_provider.dart';
import 'core/providers/app_theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppLanguageProvider()),
        ChangeNotifierProvider(create: (context) => AppThemeProvider()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppLanguageProvider>(
      builder: (context, languagePro, child) {
        var themePro = Provider.of<AppThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,

          initialRoute: Routes.splash,
          onGenerateRoute: AppRouter.onGenerateRoute,

          locale: Locale(languagePro.appLanguage),
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,

          themeMode: themePro.appTheme,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}
