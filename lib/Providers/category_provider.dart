import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Repositories/section_data.dart';
import '../Data/Models/category.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _categoryData = [
    Category(
        id: 'cat1',
        title: 'Basic Widgets',
        imagePath: "assets/images/basicWidget.jpg",
        sections: K1sectionData),
    Category(
        id: 'cat2',
        title: 'Advanced Widgets',
        imagePath: "assets/images/advancedWidget.jpg",
        sections: K2sectionData),
    Category(
        id: 'cat3',
        title: 'Ui Widgets',
        // color: const LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Colors.white,
        //       Colors.white,
        //       Colors.white,
        //       Color(0xfff8ffd8),
        //     ]),
        imagePath: "assets/images/uI.jpg",
        sections: K3sectionData),
  ];

  List<Category> get categoryData {
    return [..._categoryData];
  }

  Category findCategoryById(String id) {
    return categoryData.firstWhere((c) => c.id == id);
  }
  // List<Section> get sectionData {
  //   return [...K1sectionData];}
}
