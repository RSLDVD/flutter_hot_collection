import 'package:flutter/material.dart';
import '../Data/Models/category.dart';
import '../Data/Models/section.dart';

class AppDataProvider   with ChangeNotifier  {

final List<Category> _categoryItems = [
  Category(
    id: 'cat1',
    title: 'Basic Widgets',
    color: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [
          Colors.white,
          Colors.white,
          Colors.white,
          Color(0xfff8ffd8),
        ]),
    imagePath: "assets/images/c1.png",
    sections: [
      Section(
          id: 's1',
          category: 'cat1',
          title: 'Icon',
          subtitle: 'subtitle',
          description: 'description',
          imagePath: 'imagePath',
          sourceFilePath: '/widget_icon_ex'
          //code: const Text(''),
          ),
      Section(
          id: 's2',
          category: 'cat1',
          title: 'Text',
          subtitle: 'subtitle',
          description: 'description',
          imagePath: 'imagePath',
          sourceFilePath: '/widget_text_ex'),
    ],
  ),
//   const Category(
//       id: 'cat2',
//       tittle: 'Advanced Widgets',
//       color: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.white,
//             Colors.white,
//             Colors.white,
//             Color(0xfff8ffd8),
//           ]),
//       imagePath: 'assets/images/advancedWidgets.jpg'),
//   const Category(
//       id: 'cat3',
//       tittle: 'UI Components',
//       color: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.white,
//             Colors.white,
//             Colors.white,
//             Color(0xfff8ffd8),
//           ]),
//       imagePath: 'assets/images/c2.png'),
//   const Category(
//       id: 'cat4',
//       tittle: 'Animations',
//       color: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.white,
//             Colors.white,
//             Colors.white,
//             Color(0xfff8ffd8),
//           ]),
//       imagePath: 'assets/images/animation.jpg'),
//   const Category(
//       id: 'cat5',
//       tittle: 'DataBase',
//       color: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.white,
//             Colors.white,
//             Colors.white,
//             Color(0xfff8ffd8),
//           ]),
//       imagePath: 'assets/images/c3.png'),
//   const Category(
//     id: 'cat6',
//     tittle: 'Animation (Advanced)',
//     color: LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: [
//           Colors.white,
//           Colors.white,
//           Colors.white,
//           Color(0xfff8ffd8),
//         ]),
//     imagePath: 'assets/images/c4.png',
//   ),
];

List<Category> get categoryItems{
  return [..._categoryItems];
} 
  
}