import 'package:flutter/material.dart';
class MyTheme {
  static Color primary = const Color(0xFFB7935F);
  static Color chipsChoice = const Color.fromRGBO(228, 231, 236, 1);
  static Color c1 = const Color.fromRGBO(  105, 65, 198, 1);
  static Color tapbarColor = const Color.fromRGBO(54, 63, 114, 1);
  static Color blackColor = const Color(0xFF000000);
  static Color whiteColor = const Color(0xFFFFFFFF);
  static Color trans =  Colors.transparent;
  static Color iconColor = const Color(0xFF027A48);
  static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        headlineSmall:  TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w500,
          fontSize:14,
        ),
        bodyMedium: TextStyle(

          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),
        bodySmall: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        displayLarge:  TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
        displayMedium: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        displaySmall:  TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        labelSmall:  TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primary,

          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.grey,
          selectedItemColor: iconColor,
          selectedLabelStyle: TextStyle(color: iconColor),
          selectedIconTheme: IconThemeData(color: iconColor)),
      tabBarTheme: TabBarTheme(
        labelColor: tapbarColor,
        dividerColor: tapbarColor,
        indicatorColor: tapbarColor,

      )
  );
}
