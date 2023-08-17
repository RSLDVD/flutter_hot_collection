import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/themes/a11y-light.dart';
import 'package:flutter_hot/Action/anim_switch.dart';
import 'package:flutter_hot/Providers/theme_provider.dart';
import 'package:flutter_hot/Routes/list_datatable_ex.dart';
import 'package:flutter_hot/Routes/list_expansiontile_ex.dart';
import 'package:flutter_hot/Routes/list_gridview_ex.dart';
import 'package:flutter_hot/Routes/list_listtile_ex.dart';
import 'package:flutter_hot/Routes/list_listviewbuilder_ex.dart';
import 'package:flutter_hot/Routes/list_reorderablelist_ex.dart';
import 'package:flutter_hot/Routes/list_listwheelview_ex.dart';
import 'package:flutter_hot/Routes/list_slideabletile_ex.dart';
//
import 'package:provider/provider.dart';
import '/../../Providers/category_provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_highlight/flutter_highlight.dart';
//
import 'package:flutter_highlight/themes/solarized-dark.dart';
//
import 'package:flutter_hot/Data/Models/category.dart';
import 'package:flutter_hot/Data/Models/section.dart';
//
import 'package:flutter_hot/Routes/widget_checkbox_ex.dart';
import 'package:flutter_hot/Routes/widget_chip_ex.dart';
import 'package:flutter_hot/Routes/widget_dropdown_ex.dart';
import 'package:flutter_hot/Routes/widget_icon_ex.dart';
import 'package:flutter_hot/Routes/widget_radio_ex.dart';
import 'package:flutter_hot/Routes/widget_scaffold_ex.dart';
import 'package:flutter_hot/Routes/widget_switch_ex.dart';
import 'package:flutter_hot/Routes/widget_text_ex.dart';
import 'package:flutter_hot/Routes/widget_card_ex.dart';
import 'package:flutter_hot/Routes/widget_expansionpanellist_ex.dart';
import 'package:flutter_hot/Routes/widget_slider_ex.dart';
import 'package:flutter_hot/Routes/widget_stateless_ex.dart';
import 'package:flutter_hot/Routes/widget_container_ex.dart';
import 'package:flutter_hot/Routes/widget_dialogs_ex.dart';
import 'package:flutter_hot/Routes/widget_placeholder_ex.dart';
import 'package:flutter_hot/Routes/widget_stack_ex.dart';
import 'package:flutter_hot/Routes/widget_stateful_ex.dart';
import 'package:flutter_hot/Routes/widget_rowcolumn_ex.dart';
import 'package:flutter_hot/Routes/widget_stepper_ex.dart';
import 'package:flutter_hot/Routes/widget_textformfield_ex.dart';

enum TabType {
  view,
  code,
  description,
}

class SectionPageScreen extends StatefulWidget {
  const SectionPageScreen({Key? key}) : super(key: key);

  @override
  State<SectionPageScreen> createState() => _SectionPageScreenState();
}

class _SectionPageScreenState extends State<SectionPageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double codeFontSize = 12;

  final Map<String, Widget Function()> sectionWidgets = {
    '/widget_icon_ex': () => const WidgetIconEx(),
    '/widget_text_ex': () => const WidgetTextEx(),
    '/widget_checkbox_ex': () => const WidgetCheckBoxEx(),
    '/widget_switch_ex': () => const WidgetSwitchEx(),
    '/widget_radio_ex': () => const WidgetRadioEx(),
    '/widget_dropdown_ex': () => const WidgetDropDownEx(),
    '/widget_chip_ex': () => const WidgetChipEx(),
    '/widget_scaffold_ex': () => const WidgetScaffoldEx(),
    '/widget_stateless_ex': () => const WidgetStatelessEx(),
    '/widget_stateful_ex': () => WidgetStatefulEx(),
    '/widget_container_ex': () => WidgetContainerEx(),
    '/widget_rowcolumn_ex': () => WidgetRowColumnEx(),
    '/widget_stack_ex': () => WidgetStackEx(),
    '/widget_placeholder_ex': () => WidgetPlaceHolderEx(),
    '/widget_dialogs_ex': () => WidgetDialogsEx(),
    '/widget_stepper_ex': () => const WidgetStepperEx(),
    '/widget_slider_ex': () => const WidgetSliderEx(),
    '/widget_card_ex': () => const WidgetCardEx(),
    '/widget_expansionpanellist_ex': () => const WidgetExpansionPanelListEx(),
    '/widget_textformfield_ex': () => WidgetTextFormFieldEx(),
    '/list_listtile_ex': () => const ListTileEx(),
    '/list_listviewbuilder_ex': () => const ListViewBuilderEx(),
    '/list_gridview_ex': () =>  GridViewEx(),
    '/list_expansiontile_ex': () =>  ExpansionTileEx(),
    '/list_reorderablelist_ex': () =>  ReorderableListEx(),
    '/list_listwheelview_ex': () =>  ListWheelViewEx(),
    '/list_datatable_ex': () =>  DataTableEx(),
    
  };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildTabContent(
    BuildContext context,
    String sectionSourceNames,
    //bool isViewTab,
    TabType tapType,
    String description,
  ) {
    final Widget Function()? widgetBuilder = sectionWidgets[sectionSourceNames];

    if (widgetBuilder == null) {
      return Container(
        alignment: Alignment.center,
        child: const Text('Section Not Implemented'),
      );
    }
    //
    switch (tapType) {
      case TabType.view:
        return widgetBuilder();
      case TabType.code:
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
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? Colors.black87
                    : Colors.white, //ThemeData.dark().scaffoldBackgroundColor,
                width: double.maxFinite,
                height: double.maxFinite,
                child: SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      HighlightView(
                        textStyle: TextStyle(
                          fontSize: codeFontSize,
                        ),
                        codeText,
                        language: 'dart',
                        theme: Provider.of<ThemeProvider>(context).isDarkMode
                            ? solarizedDarkTheme
                            : a11yLightTheme, //githubTheme,
                        padding:
                            const EdgeInsets.only(top: 50, right: 15, left: 20),
                      ),
                      Positioned(
                        top: 0,
                        right: 2,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  const CircleBorder(),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent)),
                            onPressed: () {
                              if (codeText != null) {
                                Clipboard.setData(
                                    ClipboardData(text: codeText));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      backgroundColor: Colors.amber,
                                      content: Text(
                                        'Text copied to clipboard',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                );
                              }
                            },
                            child: const Icon(
                              Icons.file_copy_sharp,
                              semanticLabel: 'Copy to Clipboard',
                            )),
                      ),
                      Positioned(
                        left: 2,
                        top: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      const CircleBorder(),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.transparent)),
                                onPressed: () {
                                  setState(() {
                                    codeFontSize--;
                                  });
                                },
                                child: const Icon(Icons.zoom_out_sharp)),
                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      const CircleBorder(),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.transparent)),
                                onPressed: () {
                                  setState(() {
                                    codeFontSize++;
                                  });
                                },
                                child: const Icon(Icons.zoom_in_sharp)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );

      case TabType.description:
        return SingleChildScrollView(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  description,
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).iconTheme.color,),
                ),
              ),
            ),
          ),
        );
        break;
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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            leading: IconButton(
              color: Theme.of(context).appBarTheme.iconTheme!.color,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Padding(
              padding: const EdgeInsets.fromLTRB(0,1,10,0),
              child: Consumer<ThemeProvider>(builder: (context, themeProvider, _) {
                return  AnimSwitch();
              },),
            ) ],
            title: Text(
              section.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).appBarTheme.titleTextStyle?.color,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.phone_android,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: Text(
                      'View',
                      style: TextStyle(
                        fontSize: 13,
                        color:
                            Theme.of(context).appBarTheme.titleTextStyle?.color,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.code,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: Text(
                      'Code',
                      style: TextStyle(
                        fontSize: 13,
                        color:
                            Theme.of(context).appBarTheme.titleTextStyle?.color,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.summarize_sharp,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 13,
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
            //controller: _tabController,
            dragStartBehavior: DragStartBehavior.down,
            children: [
              _buildTabContent(context, section.sourceFilePath, TabType.view,
                  section.description), // View tab
              _buildTabContent(context, section.sourceFilePath, TabType.code,
                  section.description),
              _buildTabContent(context, '/widget_icon_ex', TabType.description,
                  section.description),
              // Code tab
            ],
          ),
        ),
      ),
    );
  }
}
