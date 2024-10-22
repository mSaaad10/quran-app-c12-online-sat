import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/colors_manager.dart';

class MyTheme {
  static bool isDarkEnabled = true;
  static ThemeData lightTheme = ThemeData(
    indicatorColor: Colors.white,
    primaryColor: ColorsManager.lightPrimary,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //backgroundColor: ColorsManager.lightPrimary,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 36),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // type: BottomNavigationBarType.fixed
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManager.lightPrimary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      elevation: 18,
    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 30, weight: 100),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: ColorsManager.lightPrimary.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 14,
    ),
    canvasColor: Colors.red,
    dividerColor: Color(0xFFB7935F),
    textTheme: const TextTheme(
      labelMedium: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: Color(0xFF242424),
      ),
      titleMedium: TextStyle(
          fontSize: 19, fontWeight: FontWeight.w400, color: Color(0xFF242424)),
      bodyMedium: TextStyle(
          fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
      headlineMedium: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(
          fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
      displayMedium: TextStyle(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.w500),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    indicatorColor: ColorsManager.yellow,
    primaryColor: ColorsManager.darkPrimary,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: ColorsManager.yellow,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 36),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // type: BottomNavigationBarType.fixed
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFF141A2E),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      elevation: 18,
    ),
    iconTheme:
        const IconThemeData(color: ColorsManager.yellow, size: 30, weight: 100),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Color(0xFF141A2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 14,
    ),
    dividerColor: ColorsManager.yellow,
    textTheme: const TextTheme(
        labelMedium: TextStyle(
            fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: ColorsManager.yellow),
        headlineMedium: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        bodyLarge: TextStyle(
            color: ColorsManager.yellow,
            fontSize: 21,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            fontSize: 22,
            color: ColorsManager.yellow,
            fontWeight: FontWeight.w400)),
  );
}
