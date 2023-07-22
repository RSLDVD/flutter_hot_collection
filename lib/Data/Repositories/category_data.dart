import 'package:flutter/material.dart';
import '../Models/category.dart';

final categoryData = [
  const Category(
      id: 'cat1',
      tittle: 'Basic Widgets',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/c1.png'),
  const Category(
      id: 'cat2',
      tittle: 'Advanced Widgets',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/advancedWidgets.jpg'),
  const Category(
      id: 'cat3',
      tittle: 'UI Components',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/c2.png'),
  const Category(
      id: 'cat4',
      tittle: 'Animations',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:[Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/animation.jpg'),
  const Category(
      id: 'cat5',
      tittle: 'DataBase',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/c3.png'),
  const Category(
      id: 'cat6',
      tittle: 'Animation (Advanced)',
      color: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white,Colors.white,Colors.white, Color(0xfff8ffd8), ]),
      imagePath: 'assets/images/c4.png',),
];
