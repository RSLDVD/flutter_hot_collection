import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Providers/app_data_provider.dart';
import '../Widgets/category_item.dart';

class CategoryPageScreen extends StatelessWidget {
  const CategoryPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryData=Provider.of<AppDataProvider>(context) ;
     final categories= categoryData.categoryItems;
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 8 / 11,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
            itemCount: categories.length,
        itemBuilder: (context, index) => CategoryItem(
            id: categories[index].id,
            title: categories[index].title,
            color: categories[index].color,
            imagePath: categories[index].imagePath),
       
      ),
    );
  }
}
