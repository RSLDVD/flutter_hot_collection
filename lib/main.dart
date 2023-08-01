import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Presentation/Screens/CategoryPage/UI/category_page_screen.dart';
import 'Presentation/Screens/CodePage/UI/code_page_screen.dart';
import 'Presentation/Screens/SectionPage/UI/sections_page_screen.dart';
import 'Providers/app_data_provider.dart';
import 'Routes/widget_text_ex.dart';
import 'Routes/widget_icon_ex.dart';

void main() {
  runApp(
    MultiProvider(
      providers:[
        ChangeNotifierProvider<AppDataProvider>(
        create: (_) => AppDataProvider(),
      ),
      
    ],
      
      child:  const MyApp()));
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

