import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  // Data or State
  ThemeMode currentTheme = ThemeMode.light;

  String currentLang = 'en';

  changeAppLang(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  // this function changes state
  void changeAppTheme(ThemeMode newTheme) {
    // dark
    // dark
    if (newTheme == currentTheme) return;
    currentTheme = newTheme; // dark
    notifyListeners();
  }

  bool isLightTheme() {
    return currentTheme == ThemeMode.light; // true
  }
}
