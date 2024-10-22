import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/home/home_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/quran_details_screen/quran_details_screen.dart';
import 'package:quran_app_c12_online_ast/presentation/screens/splash/splash_screen.dart';
import 'package:quran_app_c12_online_ast/providers/quran_provider.dart';

class RoutesManager {
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';
  static const String quranDetailsRoute = '/quranDetails';
  static const String hadithDetailsRoute = '/hadithDetails';

  static Map<String, WidgetBuilder> routes = {
    RoutesManager.splashRoute: (_) => SplashScreen(),
    RoutesManager.homeRoute: (_) => HomeScreen(),
    RoutesManager.quranDetailsRoute: (_) => ChangeNotifierProvider(
        create: (context) => QuranProvider(), child: QuranDetailsScreen()),
    RoutesManager.hadithDetailsRoute: (_) => HadithDetailsScreen(),
  };
}
