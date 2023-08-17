// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    splashColor:Colors.amber ,
    primaryColor: const Color(0xFFeef1f6),
    accentColor: const Color(0xFF555a54),
    scaffoldBackgroundColor: const Color(0xffF6F4EB),
    textTheme:  TextTheme( subtitle1: TextStyle(color:  Colors.black.withOpacity(0.6))),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xffeeeeee),
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
    splashColor:Colors.amber ,
    primaryColor: const Color(0xFF444444),
    accentColor: const Color(0xff000000),
    scaffoldBackgroundColor: const Color(0xff323232),
    textTheme:  TextTheme( subtitle1: TextStyle(color:  Colors.white.withOpacity(0.6))),
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
