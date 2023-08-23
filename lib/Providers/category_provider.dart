
import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Repositories/section_data.dart';
import '../Data/Models/category.dart';
import '../Data/Models/section.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _categoryData = [
    Category(
        id: 'cat1',
        title: 'Basic Widgets',
        subtitle: [
          'scaffold,',
          'states,',
          'icon,',
          'text,',
          'row,',
          'column,',
          'Expand,',
          'Container,',
          'Stack,',
          'CheckBox,',
          'Switch,',
          '...'
        ],
        imagePath: "assets/images/basicWidget.jpg",
        sections: K1section),
    Category(
        id: 'cat2',
        title: 'Lists',
        subtitle: [
          'ListTile,',
          'ListView.builder,',
          'GridList,',
          'ExpansionTile,',
          'Dissmissable List,',
          'Reorderable List,',
          '',
          '...'
        ],
        imagePath: "assets/images/advancedWidget.jpg",
        sections: K2section),
    Category(
        id: 'cat3',
        title: 'App Bar',
        subtitle: [
          'AppBar,',
          'SliverAppBar,',
          'BottomAppBar,',
          'PersistentAppBar,',
          'CupertinoNavigationBar,',
          // 'CupertinoSliverNavigationBar,',
          // '...'
        ],
        imagePath: "assets/images/appbar.jpg",
        sections: K3section),
    Category(
        id: 'cat4',
        title: 'Navigation',
        subtitle: [
          'BottomNavigationBar,',
          'TabBar and TabBarView,',
          'Drawer,',
          'FloatingActionButton (FAB),',
          'PageRouteBuilder,',
          // 'Navigator.pop & push,',
          // 'Navigator.pushReplacement,',
          // 'Navigator.popAndPushNamed,',
          // 'Navigator.pushNamedAndRemoveUntil,',
          // 'Navigator.pushReplacementNamed,'
        ],
        imagePath: "assets/images/navigation.jpg",
        sections: K4section),
    Category(
        id: 'cat5',
        title: 'Animation',
        subtitle: [
          'AppBar',
          'SliverAppBar',
          'BottomAppBar',
          'PersistentAppBar',
          'CupertinoNavigationBar',
          'CupertinoSliverNavigationBar',
        ],
        imagePath: "assets/images/animation.jpg",
        sections: K5section),
  ];

  List<Category> get categoryData {
    return [..._categoryData];
  }

  Category findCategoryById(String id) {
    return categoryData.firstWhere((c) => c.id == id);
  }

  //

  final List<Section> _favoriteSections = [];
  List<Section> get favoriteSections => _favoriteSections;
  //
  void toggleSectionFavorite(String sectionId, String catId) {
    final loadedCategory = categoryData.firstWhere((c) => c.id == catId);
    final loadedSection = loadedCategory.sections
        .firstWhere((section) => section.id == sectionId);

    if (loadedSection.isFavorite) {
      _favoriteSections.remove(loadedSection);
    } else {
      _favoriteSections.add(loadedSection);
    }

    loadedSection.isFavorite = !loadedSection.isFavorite;
    notifyListeners();
  }
}
