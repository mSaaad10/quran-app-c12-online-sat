import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLang = 'en';

  void changeAppLang(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    notifyListeners();
  }
}
