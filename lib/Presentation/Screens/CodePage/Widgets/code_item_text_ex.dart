import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

class CodeItemTextEx extends StatefulWidget {
  const CodeItemTextEx({
    Key? key,
  }) : super(key: key);

  @override
  State<CodeItemTextEx> createState() => _CodeItemTextExState();
}

class _CodeItemTextExState extends State<CodeItemTextEx> {
  String _text = '';

  @override
  void initState() {
    super.initState();
    fetchTextFromGitHub();
  }

   @override
  void dispose() {
    // Perform cleanup operations here (if needed)
    super.dispose();
  }

  Future<void> fetchTextFromGitHub() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/RSLDVD/flutter_hot_collection/master/lib/Routes/widget_icon_ex.dart'));
    if (response.statusCode == 200) {
      setState(() {
        _text = response.body;
      });
    } else {
      // ignore: avoid_print
      print('Failed to fetch text from Github: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: HighlightView(
            _text,
            language: 'dart',
             theme: atomOneDarkTheme,
            padding: const EdgeInsets.all(9),
            
          ),
        ),
      ),
    );
  }
}
