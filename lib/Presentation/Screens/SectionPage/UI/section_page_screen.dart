import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Data/Models/section.dart';
import 'package:flutter_hot/Routes/widget_icon_ex.dart';
import 'package:flutter_hot/Routes/widget_text_ex.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:provider/provider.dart';
import '/../../Providers/category_provider.dart';

class SectionPageScreen extends StatefulWidget {
  const SectionPageScreen({Key? key}) : super(key: key);

  @override
  State<SectionPageScreen> createState() => _SectionPageScreenState();
}

class _SectionPageScreenState extends State<SectionPageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  String _text = '';

  //Map<String, String>? routeArgs;

  @override
  void initState() {
    super.initState();
  

    // Call fetchTextFromGitHub here or wherever you need to fetch the text
  }

  @override
  void dispose() {
    _tabController.dispose();
    // Perform cleanup operations here (if needed)
    super.dispose();
  }

  @override
  void didChangeDependencies() {
  _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);
    print('_onTabChanged');
   // print('Fetch');

    super.didChangeDependencies();
  }

  void _onTabChanged() {
    if (_tabController.index == 0) {
      // The user switched to the "Code" tab
      fetchTextFromGitHub();
    }
  }

  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final sectionId = routArg['id'] as String;
    final categoryId = routArg['category'] as String;
    Category category =
        context.watch<CategoryProvider>().findCategoryById(categoryId);
    Section section = category.sections.firstWhere((s) => s.id == sectionId);


    if (section is! Section) {
      // Handle invalid or missing route arguments
      return const Scaffold(
        body: Center(
          child: Text('Invalid or Missing Route Arguments'),
        ),
      );
    }

    if (section == null) {
      // Handle the case when 'index' is missing or not an integer
      return const Scaffold(
        body: Center(
          child: Text('Invalid index'),
        ),
      );
    }

    //final description = routeArgs['description'] as String?;

    final Map<String, Widget Function()> sectionWidgets = {
      '/widget_icon_ex': () => const WidgetIconEx(),
      '/widget_text_ex': () => const WidgetTextEx(),
      // Add more mappings for other section classes
    };

    Widget _selectCode(
      BuildContext context,
      String sectionNames,
    ) {
      // Get the corresponding widget class based on the section name
      //Navigator.of(context).pushNamed('/code_page',arguments: {'id': id,});
      final Widget Function()? widgetBuilder = sectionWidgets[sectionNames];

      // If the section is not mapped or the widgetBuilder is null, return a placeholder widget
      if (widgetBuilder == null) {
        return Container(
          alignment: Alignment.center,
          child: const Text('Section Not Implemented'),
        );
      }

      // Build the widget using the retrieved widget class
      return FutureBuilder<Object?>(
        future: Future.value(
            widgetBuilder()), // Return a completed future with the widget
        builder: (BuildContext context, AsyncSnapshot<Object?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(); // or any other loading indicator
          }

          // Add your logic for other connection states
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          // Return the widget built from the retrieved widget class
          return snapshot.data as Widget;
        },
      );
    }

    Future<void> fetchTextFromGitHub() async {
      //final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      if (section == null) {
        // Handle the case when route arguments are missing or invalid
        setState(() {
          _text = 'Invalid or Missing Route Arguments';
        });
        return;
      }
      if (section.category == null) {
        // Handle the case when 'id' or 'category' is missing in the route arguments
        setState(() {
          _text = 'Invalid section or category';
        });
        return;
      }

      if (section.id != null) {
        var response = await http.get(
          Uri.parse(
              'https://raw.githubusercontent.com/RSLDVD/flutter_hot_collection/master/lib/Routes${section.sourceFilePath}.dart'),
        );
        if (response.statusCode == 200) {
          setState(() {
            _text = response.body;
            print('Response Body: $_text');
          });
        } else {
          // Failed to fetch code from GitHub, display an error message
          setState(() {
            _text = 'Failed to fetch code from GitHub: ${response.statusCode}';
            print('Error: $_text');
          });
        }
      } else {
        // Invalid index, display an error message
        setState(() {
          _text = 'Invalid index: ';
        });
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfff8ffd8),
            title: Text(
              section.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff090088),
              ),
            ),
            centerTitle: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(15),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'View',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff090088),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Code',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff090088),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              _selectCode(
                context,
                section.sourceFilePath,
              ),
              
                 SingleChildScrollView(
                  child: HighlightView(
                    _text,
                    language: 'dart',
                    theme: githubTheme,
                    padding: const EdgeInsets.all(9),
                  ),
                )
              ,
            ],
          ),
        ),
      ),
    );
  }
  
  void fetchTextFromGitHub() {}

  //void fetchTextFromGitHub() {}
}
