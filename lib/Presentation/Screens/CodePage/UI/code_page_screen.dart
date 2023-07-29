
import 'package:flutter/material.dart';
import 'package:flutter_hot/Routes/widget_icon_ex.dart';


class CodePageScreen extends StatelessWidget {
  //final String id;
  final String category;
  final String section;
  final String title;
  final String sourceFilePath;
  //final String code;
   CodePageScreen({
    Key? key,
    // required this.id,
    required this.category,
    required this.section,
    required this.title,
    required this.sourceFilePath
    // required this.code
  }) : super(key: key);

  Widget _selectCode() {
 return Padding(padding: const EdgeInsets.fromLTRB(150,0,0,0),child: WidgetIconEx());
  }


  @override
  Widget build(BuildContext context) {

    

    // final codeItem = CodeRepository.codeData
    //     .firstWhere((code) => code.category == category && code.title == title);
        

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                title,
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
              _selectCode(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(child: Text(_selectCode().toString(), overflow: TextOverflow.clip,)),
              )
            ])
            //SingleChildScrollView(child: Text(codeItem.code)),
            ),
      ),
    );
  }
}
