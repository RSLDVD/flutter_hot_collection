import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Repositories/category_data.dart';
import '../Widgets/category_item.dart';

class CategoryPageScreen extends StatelessWidget {
  const CategoryPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8ffd8),
        title: const Text(
          'Flutter Hot Collection',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff090088)),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 8 / 11,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        children: categoryData
            .map((d) => CategoryItem(
                id: d.id,
                title: d.tittle,
                color: d.color,
                imagePath: d.imagePath))
            .toList(),
      ),
    );
  }
}
