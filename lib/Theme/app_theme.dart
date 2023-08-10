// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFeef1f6),
    accentColor: const Color(0xFF555a54),
    scaffoldBackgroundColor: const Color(0xffF6F4EB),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff91C8E4),
      iconTheme: IconThemeData(
        color: Color(0xff022C43),
      ),
      titleTextStyle: TextStyle(
        color: Color(0xff022C43),
      ),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xffF6F4EB), scrimColor: Colors.white38),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF444444),
    accentColor: const Color(0xff000000),
    scaffoldBackgroundColor: const Color(0xff323232),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff1B262C),
      iconTheme: IconThemeData(
        color: Color(0xffFFE3D8),
      ),
      titleTextStyle: TextStyle(
        color: Color(0xffFFE3D8),
      ),
    ),
    drawerTheme: const DrawerThemeData(
        backgroundColor: const Color(0xff323232), scrimColor: Colors.black38),
  );
}
