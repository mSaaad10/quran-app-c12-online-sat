import 'package:flutter/material.dart';

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
      ),
      dividerColor: Color(0xFFB7935F),
      textTheme: TextTheme(
          labelMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: Color(0xFF242424),
          ),
          titleMedium: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Color(0xFF242424))));
}
