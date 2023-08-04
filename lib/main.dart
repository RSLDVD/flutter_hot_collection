import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/section.dart';
import 'package:flutter_hot/Presentation/Screens/CategoriesPage/UI/categories_page_screen.dart';
import 'package:flutter_hot/Presentation/Screens/SectionPage/UI/section_page_screen.dart';
import 'package:provider/provider.dart';

import 'Presentation/Screens/CategoryPage/UI/category_page_screen.dart';
import 'Providers/category_provider.dart';
import 'Routes/widget_text_ex.dart';
import 'Routes/widget_icon_ex.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CategoryProvider>(
      create: (_) => CategoryProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hot',
      home: const CategoriesPageScreen(),
      // onGenerateRoute: ((settings) {
      //   if(settings.name == '/section_page' ){
      //     final Section section = settings.arguments as Section;
      //     return MaterialPageRoute(builder: (context) =>  SectionPageScreen());
      //   }
      //   return null;
      // }),
      routes: {
        '/category': (context) => const CategoryPageScreen(),
        '/section_page': (context) => const SectionPageScreen(),
        '/widget_icon_ex': (context) => const WidgetIconEx(),
        '/widget_text_ex': (context) => const WidgetTextEx(),
      },
    );
  }
}
