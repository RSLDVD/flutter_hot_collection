// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    splashColor: Colors.grey,
    primaryColor: const Color(0xFFeef1f6),
    bottomAppBarColor: const Color(0xFFD71313),
    accentColor: const Color(0xFF555a54),
    scaffoldBackgroundColor: const Color(0xffF6F4EB),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        fontFamily: 'OpenSansCondensed', 
        fontWeight: FontWeight.normal, 
        color: Colors.black.withOpacity(0.6),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffeeeeee),
      iconTheme: IconThemeData(
        color: Color(0xff022C43),
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'OpenSansCondensed', 
        fontWeight: FontWeight.bold,
        color: Color(0xff022C43),
      ),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xffF6F4EB), scrimColor: Colors.white38),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    splashColor: Colors.white30,
    primaryColor: const Color(0xff181818),
    bottomAppBarColor: const Color(0xFFD71313),
    accentColor: const Color(0xff222222),
    scaffoldBackgroundColor: const Color(0xff20262E),//Color(0xff323232),
    textTheme:
        TextTheme(
      subtitle1: TextStyle(
        fontFamily: 'OpenSansCondensed', 
        fontWeight: FontWeight.normal, 
        color: Colors.white.withOpacity(0.6),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor:Color(0xff222222),// Color(0xff1B262C),
      iconTheme: IconThemeData(
        color: Color(0xffeeeeeE),
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'OpenSansCondensed', 
        fontWeight: FontWeight.bold,
        color: Color(0xffDDDDDD),
      ),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: const Color(0xff20262E), scrimColor: Colors.black38),
  );
}
