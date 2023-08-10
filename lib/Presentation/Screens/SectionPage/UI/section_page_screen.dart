import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_highlight/themes/solarized-dark.dart';

import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Data/Models/section.dart';
import 'package:flutter_hot/Routes/widget_checkbox_ex.dart';
import 'package:flutter_hot/Routes/widget_chip_ex.dart';
import 'package:flutter_hot/Routes/widget_dropdown_ex.dart';
import 'package:flutter_hot/Routes/widget_icon_ex.dart';
import 'package:flutter_hot/Routes/widget_radio_ex.dart';
import 'package:flutter_hot/Routes/widget_switch_ex.dart';
import 'package:flutter_hot/Routes/widget_text_ex.dart';

import 'package:http/http.dart' as http;
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

  final Map<String, Widget Function()> sectionWidgets = {
    '/widget_icon_ex': () => const WidgetIconEx(),
    '/widget_text_ex': () => const WidgetTextEx(),
    '/widget_checkbox_ex': () => const WidgetCheckBoxEx(),
    '/widget_switch_ex': () => const WidgetSwitchEx(),
    '/widget_radio_ex': () => const WidgetRadioEx(),
    '/widget_dropdown_ex': () => const WidgetDropDownEx(),
    'widget_chip_ex': () => const WidgetChipEx(),
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildTabContent(
    BuildContext context,
    String sectionSourceNames,
    bool isViewTab,
  ) {
    final Widget Function()? widgetBuilder = sectionWidgets[sectionSourceNames];

    if (widgetBuilder == null) {
      return Container(
        alignment: Alignment.center,
        child: const Text('Section Not Implemented'),
      );
    }

    if (isViewTab) {
      return widgetBuilder(); // Return the actual widget for the "View" tab
    } else {
      return FutureBuilder<String>(
        future: fetchTextFromGit(sectionSourceNames),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          final String codeText = snapshot.data ?? 'Failed to fetch code';

          return Scaffold(
            //backgroundColor:  Theme.of(context).scaffoldBackgroundColor,
            body: Container(
              color: Colors.black87, //ThemeData.dark().scaffoldBackgroundColor,
              width: double.maxFinite,
              height: double.maxFinite,
              child: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    HighlightView(
                      textStyle: const TextStyle(
                        fontSize: 12,
                      ),
                      codeText,
                      language: 'dart',
                      theme: solarizedDarkTheme, //githubTheme,
                      padding:
                          const EdgeInsets.only(top: 50, right: 15, left: 20),
                    ),
                    Positioned(
                      top: 0,
                      right: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            // Add your button logic here
                            // For example, you can copy the text to the clipboard
                            if (codeText != null) {
                              Clipboard.setData(ClipboardData(text: codeText));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Text copied to clipboard')),
                              );
                            }
                          },
                          child: const Icon(
                            Icons.copy,
                            semanticLabel: 'Copy to Clipboard',
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }

  Future<String> fetchTextFromGit(String sectionSourceFilePath) async {
    try {
      var response = await http.get(
        Uri.parse(
          'https://raw.githubusercontent.com/RSLDVD/flutter_hot_collection/master/lib/Routes$sectionSourceFilePath.dart',
        ),
      );

      if (response.statusCode == 200) {
        return response.body;
      } else {
        return 'Failed to fetch code. Status Code: ${response.statusCode}';
      }
    } catch (e) {
      return 'Error occurred while fetching code: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final sectionId = routeArgs['id'] as String;
    final categoryId = routeArgs['category'] as String;
    Category category =
        context.watch<CategoryProvider>().findCategoryById(categoryId);
    Section section = category.sections.firstWhere((s) => s.id == sectionId);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            leading: IconButton(
              color: Theme.of(context).appBarTheme.iconTheme!.color,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                // Add the code to handle the back button press here
                // For example, you can use Navigator to pop the current route
                Navigator.pop(context);
              },
            ),
            //backgroundColor: const Color(0xfff8ffd8),
            title: Text(
              section.title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.aod_rounded,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: Text(
                      'View',
                      style: TextStyle(
                        fontSize: 15,
                        color:
                            Theme.of(context).appBarTheme.titleTextStyle?.color,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.source,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: Text(
                      'Code',
                      style: TextStyle(
                        fontSize: 15,
                        color:
                            Theme.of(context).appBarTheme.titleTextStyle?.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            dragStartBehavior: DragStartBehavior.down,
            children: [
              _buildTabContent(
                  context, section.sourceFilePath, true), // View tab
              _buildTabContent(
                  context, section.sourceFilePath, false), // Code tab
            ],
          ),
        ),
      ),
    );
  }
}
