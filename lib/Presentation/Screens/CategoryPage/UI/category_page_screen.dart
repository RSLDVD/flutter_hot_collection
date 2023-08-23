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
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routArg['id'].toString();
    Category category =
        context.watch<CategoryProvider>().findCategoryById(categoryId);
    List<Section> categorySections = category.sections;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            iconTheme: Theme.of(context).appBarTheme.iconTheme,
            elevation: 5,
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.25, // Adjust the height as needed
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1,
              titlePadding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              centerTitle: true,
              background: Hero(
                tag: categoryId,
                child: Image.asset(
                    category.imagePath, // Replace with the actual image path
                    fit: BoxFit
                        .fitWidth // Adjust the image's fit property as needed
                    ),
              ),
              title: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Theme.of(context)
                      .appBarTheme
                      .backgroundColor!
                      .withOpacity(0.7),
                ),
                child: Text(
                  category.title,
                  style:  TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Section section = categorySections[index];
                final animation = CurvedAnimation(
                  parent: _listController,
                  curve: Interval(
                    (index / category.sections.length),
                    1,
                    curve:
                        Curves.elasticIn, // Choose a different curve if desired
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
                          isFavorite: categorySections[index].isFavorite,
                        ),
                        const Divider(
                          height: 3,
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
