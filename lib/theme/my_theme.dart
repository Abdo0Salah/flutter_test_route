import 'package:flutter/material.dart';

class MyTheme {
  static Color primary = const Color(0xFFB7935F);
  static Color blackColor = const Color(0xFF000000);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color iconColor = const Color(0xFF027A48);
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        backgroundColor: Colors.transparent,
        //centerTitle: true,
        elevation: 0.0
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 30,
        ),
        bodyMedium: TextStyle(

          color: blackColor,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        bodySmall: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primary,

          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.grey,
          selectedItemColor: iconColor,
          selectedLabelStyle: TextStyle(color: iconColor),
          selectedIconTheme: IconThemeData(color: iconColor)),
      // iconTheme: IconThemeData(
      //     color: primary,
      //     size: 30,
      // )
  );
}
