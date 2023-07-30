
import 'package:flutter/material.dart';
import 'package:flutter_hot/Presentation/Screens/CategoryPage/UI/category_page_screen.dart';
import 'package:flutter_hot/Presentation/Screens/CodePage/UI/code_page_screen.dart';
import 'package:flutter_hot/Presentation/Screens/SectionPage/UI/sections_page_screen.dart';
import 'package:flutter_hot/Routes/widget_text_ex.dart';

import 'Routes/widget_icon_ex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hot',
      home: const CategoryPageScreen(),
      routes: {
        '/sections': (context) =>  const SectionsPageScreen() ,
        '/section': (context) =>  const CodePageScreen(),
        '/widget_icon_ex':(context) => const WidgetIconEx(),
        '/widget_text_ex':(context) => const WidgetTextEx(),
      },
    );
  }
}

