import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Data/Models/section.dart';

import 'package:flutter_hot/Providers/category_provider.dart';
import '../Widgets/section_item.dart';
import 'package:provider/provider.dart';

class CategoryPageScreen extends StatelessWidget {
  const CategoryPageScreen({Key? key}) : super(key: key);

  // final String categoryId;
  // final String categoryTitle;
  // //final String sectionDescription;
  // final String categoryImagePath;

  // const SectionsPageScreen(
  //     {Key? key,
  //     required this.categoryId,
  //     required this.categoryTitle,
  //     //required this.sectionDescription,
  //     required this.categoryImagePath})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> categories = context.watch<CategoryProvider>().categoryData;
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routArg['id'] as String;
    Category category =
        context.watch<CategoryProvider>().findCategoryById(categoryId);
    List<Section> categorySections = category.sections;
    // final categoryTitle= routArg['title'] as String;
    //final categoryImagePath= routArg['imagePath'] as String;
    //final loadedCategory = Provider.of<AppDataProvider>(context, listen: false)
    //    .categoryData
    //    .firstWhere((c) => c.id == categoryId);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 5,
            backgroundColor: Colors.white,

            pinned: true,
            //floating: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.2, // Adjust the height as needed
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                category.imagePath, // Replace with the actual image path
                fit:
                    BoxFit.contain, // Adjust the image's fit property as needed
              ),
              title: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white70,
                ),
                child: Text(
                  category.title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff090088)),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // final loadedSection = Provider.of<C>(context)
                //     .sectionData
                //     .where((s) => s.category == categoryId)
                //     .toList();
                return SectionItem(
                  id: categorySections[index].id,
                  category: categorySections[index].category,
                  index: index,
                  title: categorySections[index].title,
                  subtitle: categorySections[index].subtitle,
                  description: categorySections[index].description,
                  imagePath: categorySections[index].imagePath,
                  sourceFilePath: categorySections[index].sourceFilePath,
                );
              },
              childCount: category.sections.length,
            ),
          ),
          // Add other slivers as needed
        ],
      ),
    );
  }
}
