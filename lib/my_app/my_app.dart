import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/config/theme/my_theme.dart';
import 'package:quran_app_c12_online_ast/core/routes_manager.dart';
import 'package:quran_app_c12_online_ast/providers/language_provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
      routes: RoutesManager.routes,
      initialRoute: RoutesManager.splashRoute,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(languageProvider.currentLang),
    );
  }
}
