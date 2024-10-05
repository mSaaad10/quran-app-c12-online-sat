import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black)),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //backgroundColor: ColorsManager.goldColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 36),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // type: BottomNavigationBarType.fixed
      ));
}
