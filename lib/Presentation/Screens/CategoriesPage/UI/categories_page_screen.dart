import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:provider/provider.dart';
import '../../../../Providers/category_provider.dart';
import '../Widgets/category_item.dart';

class CategoriesPageScreen extends StatelessWidget {
  const CategoriesPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final loadedCategory=Provider.of<AppDataProvider>(context) ;
    //final categories= loadedCategory.categoryData;
     List<Category> categories= context.watch<CategoryProvider>().categoryData;
      
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
