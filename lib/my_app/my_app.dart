import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/config/theme/my_theme.dart';
import 'package:quran_app_c12_online_ast/core/routes_manager.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/home_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/quran_details_screen/quran_details_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        RoutesManager.splashRoute: (_) => SplashScreen(),
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
        RoutesManager.hadithDetailsRoute: (_) => HadithDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
