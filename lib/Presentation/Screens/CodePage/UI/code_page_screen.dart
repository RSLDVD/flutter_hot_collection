
import 'package:flutter/material.dart';
import 'package:flutter_hot/Presentation/Screens/CodePage/Widgets/code_item_execute.dart';
import '../../../../Data/Repositories/code_data.dart';

class CodePageScreen extends StatelessWidget {
  //final String id;
  final String category;
  final String section;
  final String title;
  //final String code;
  const CodePageScreen({
    Key? key,
    // required this.id,
    required this.category,
    required this.section,
    required this.title,
    // required this.code
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeItem = CodeRepository.codeData
        .firstWhere((code) => code.category == category && code.title == title);
        

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                codeItem.title,
              ),
              centerTitle: true,
              bottom:  const PreferredSize(
                  preferredSize: Size.fromHeight(20),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text('View'),
                      ),
                      Tab(child: Text('Code'))
                    ],
                  )),
            ),
            body: TabBarView(children: [
              Center(
                child: CodeItemExecute(codeData: codeItem.code),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(child: Text(codeItem.code)),
              )
            ])
            //SingleChildScrollView(child: Text(codeItem.code)),
            ),
      ),
    );
  }
}
