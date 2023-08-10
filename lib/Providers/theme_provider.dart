import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  bool _isDarkMode = false;
   late AnimationController _animationController;

  // ThemeProvider(){
  //   _animationController= AnimationController(vsync: , duration: const Duration(milliseconds: 300),);
  // }

   AnimationController get animationController => _animationController;

  bool get isDarkMode => _isDarkMode ;

  bool toggleTheme(){
    _isDarkMode= !_isDarkMode;
    //_animationController.forward(from: 0.0);
    notifyListeners();
    return _isDarkMode;
      }


}