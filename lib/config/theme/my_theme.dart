import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/colors_manager.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManager.goldColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //backgroundColor: ColorsManager.goldColor,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 36),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // type: BottomNavigationBarType.fixed
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManager.goldColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      elevation: 18,
    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 30, weight: 100),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: ColorsManager.goldColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 14,
    ),
    dividerColor: Color(0xFFB7935F),
    textTheme: const TextTheme(
        labelMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: Color(0xFF242424),
        ),
        titleMedium: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: Color(0xFF242424)),
        bodyMedium: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        headlineMedium: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        bodyLarge: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500)),
  );
}
