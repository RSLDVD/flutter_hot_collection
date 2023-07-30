import 'package:flutter/material.dart';
import 'package:flutter_hot/Presentation/Screens/CodePage/Widgets/code_item_text_ex.dart';
import 'package:flutter_hot/Routes/widget_icon_ex.dart';
import 'package:flutter_hot/Routes/widget_text_ex.dart';

class CodePageScreen extends StatelessWidget {
  const CodePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments;

    if (routeArgs == null || routeArgs is! Map<String, String>) {
      // Handle invalid or missing route arguments
      return const Scaffold(
        body: Center(
          child: Text('Invalid or Missing Route Arguments'),
        ),
      );
    }
    //final id = routeArgs['id'] as String;
    final index = int.parse(routeArgs['index']!) + 1;
    final title = routeArgs['title']!;
    // ignore: unused_local_variable
    final description = routeArgs['description']!;
    // ignore: unused_local_variable
    final sourceFilePath = routeArgs['sourceFilePath']!;

    final Map<String, Widget Function()> sectionWidgets = {
      '/widget_icon_ex': () => const WidgetIconEx(),
      '/widget_text_ex': () => const WidgetTextEx(),
      // Add more mappings for other section classes
    };

    Widget _selectCode(BuildContext context, List<String> section, int index) {
      // Get the corresponding widget class based on the section name
      final Widget Function()? widgetBuilder = sectionWidgets[section[index]];

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfff8ffd8),
            title: Text(
              title,
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
            children: [
              _selectCode(context, sectionWidgets.keys.toList(), index - 1),
              const CodeItemTextEx(),
            ],
          ),
        ),
      ),
    );
  }
}
