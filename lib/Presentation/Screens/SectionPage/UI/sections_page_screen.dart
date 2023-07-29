import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Repositories/section_data.dart';
import 'package:flutter_hot/Presentation/Screens/Widgets/section_item.dart';

class SectionsPageScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  final String categoryDescription;
  final String categoryImagePath;

  const SectionsPageScreen(
      {Key? key,
      required this.categoryId,
      required this.categoryTitle,
      required this.categoryDescription,
      required this.categoryImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final routArg = ModalRoute.of(context)!.settings.arguments as String;
    // final categoryId= routArg['id'] ;
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
                categoryImagePath, // Replace with the actual image path
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
                  categoryTitle,
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
                final sectionItem = sectionData
                    .where((s) => s.category == categoryId).toList();
                return  SectionItem(
                  id: sectionItem[index].id,
                  category: sectionItem[index].category,
                  index: index + 1,
                  title: sectionItem[index].title,
                  subtitle: sectionItem[index].subtitle,
                  description: sectionItem[index].description,
                  imagePath: sectionItem[index].imagePath,
                  sourceFilePath: sectionItem[index].sourceFilePath,
                );
              },
              childCount: sectionData.length,
            ),
          ),
          // Add other slivers as needed
        ],
      ),
    );
  }
}
