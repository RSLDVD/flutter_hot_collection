import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Presentation/Screens/CategoriesPage/Widgets/category_item.dart';
import 'package:flutter_hot/Providers/category_provider.dart';
import 'package:provider/provider.dart';

class CategoryGridViewBuilder extends StatelessWidget {
  const CategoryGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    List<Category> categories = context.watch<CategoryProvider>().categoryData;


    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 8 / 11,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(
            id: categories[index].id,
            title: categories[index].title,
            subtitle: categories[index].subtitle.toList(),
            imagePath: categories[index].imagePath),
      );
    
  }
}