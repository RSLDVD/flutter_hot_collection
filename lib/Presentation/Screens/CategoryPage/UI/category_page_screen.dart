import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Data/Models/section.dart';

import 'package:flutter_hot/Providers/category_provider.dart';
import '../Widgets/section_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/animation.dart';

class CategoryPageScreen extends StatefulWidget {
  const CategoryPageScreen({Key? key}) : super(key: key);

  @override
  State<CategoryPageScreen> createState() => _CategoryPageScreenState();
}

class _CategoryPageScreenState extends State<CategoryPageScreen>
    with SingleTickerProviderStateMixin {
  // final String categoryId;
  late AnimationController _listController;
  @override
  void initState() {
    super.initState();
    _listController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _listController.forward();
  }

  @override
  void dispose() {
    _listController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // List<Category> categories = context.watch<CategoryProvider>().categoryData;
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routArg['id'] as String;
    Category category =
        context.watch<CategoryProvider>().findCategoryById(categoryId);
    List<Section> categorySections = category.sections;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: Theme.of(context).appBarTheme.iconTheme,
            elevation: 5,
            //pinned: true,
            floating: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.25, // Adjust the height as needed
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.2,
              titlePadding: const EdgeInsets.fromLTRB(0, 25, 0, 5),
              centerTitle: true,
              background: Hero(
                tag: categoryId,
                child: Image.asset(
                    category.imagePath, // Replace with the actual image path
                    fit: BoxFit.cover // Adjust the image's fit property as needed
                    ),
              ),
              title: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context).appBarTheme.backgroundColor,
                ),
                child: Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    //color: Color(0xff3c3d42),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final animation = CurvedAnimation(
                  parent: _listController,
                  curve: Interval(
                    (index / category.sections.length),
                    1,
                    curve: Curves
                        .easeInCirc, // Choose a different curve if desired
                  ),
                );
                return AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: Column(
                      children: [
                        SectionItem(
                          id: categorySections[index].id,
                          category: categorySections[index].category,
                          index: index,
                          title: categorySections[index].title,
                          subtitle: categorySections[index].subtitle,
                          description: categorySections[index].description,
                          imagePath: categorySections[index].imagePath,
                          sourceFilePath:
                              categorySections[index].sourceFilePath,
                        ),
                        const Divider(
                          height: 10,
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
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
