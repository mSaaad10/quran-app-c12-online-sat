import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app_c12_online_ast/my_app/my_app.dart';
import 'package:quran_app_c12_online_ast/providers/language_provider.dart';
import 'package:quran_app_c12_online_ast/providers/theme_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
    )
  ], child: const MyApp()));
}
