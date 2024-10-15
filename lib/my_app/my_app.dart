import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/config/theme/my_theme.dart';
import 'package:quran_app_c12_online_ast/core/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      routes: RoutesManager.routes,
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
