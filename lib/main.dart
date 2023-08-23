import 'package:flutter/material.dart';
import 'package:flutter_hot/Presentation/Screens/CategoriesPage/UI/categories_page_screen.dart';
import 'package:flutter_hot/Presentation/Screens/FavoritesPage/favorites_page_screen.dart';
import 'package:flutter_hot/Presentation/Screens/SectionPage/UI/section_page_screen.dart';
import 'package:flutter_hot/Providers/theme_provider.dart';
import 'package:flutter_hot/Theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'Presentation/Screens/CategoryPage/UI/category_page_screen.dart';
import 'Providers/category_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoryProvider>(
          create: (_) => CategoryProvider(),
        ),
       
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hot',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
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
        '/favorites' : (context) => const FavoritesPageScreen(),
        // '/widget_icon_ex': (context) => const WidgetIconEx(),
        // '/widget_text_ex': (context) => const WidgetTextEx(),
        // '/widget_checkbox_ex': (context) => const WidgetCheckBoxEx(),
        // '/widget_switch_ex': (context) => const WidgetSwitchEx(),
        // '/widget_radio_ex': (context) => const WidgetRadioEx(),
        // '/widget_dropdown_ex': (context) => const WidgetDropDownEx(),
        // 'widget_chip_ex': (context) => const WidgetChipEx(),
      },
    );
  }
}
