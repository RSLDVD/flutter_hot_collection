import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:provider/provider.dart';

import '../../../../Providers/app_data_provider.dart';

class CodeItemTextEx extends StatefulWidget {
  final int index;
  const CodeItemTextEx({
    required this.index,
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
    //    Future.delayed(Duration.zero, () {
    //   fetchTextFromGitHub();
    // });
  }

  @override
  void dispose() {
    // Perform cleanup operations here (if needed)
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    // This method is called when dependencies change, including Provider updates.
    // You can safely call fetchTextFromGitHub() here.
    fetchTextFromGitHub();
    super.didChangeDependencies();
  }

  Future<void> fetchTextFromGitHub() async {
    final routArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    if (routArg == null) {
      // Handle the case when route arguments are missing or invalid
      setState(() {
        _text = 'Invalid or Missing Route Arguments';
      });
      return;
    }
    final sectionId = routArg['id'];
    final categoryId = routArg['category'];

    if (sectionId == null || categoryId == null) {
      // Handle the case when 'id' or 'category' is missing in the route arguments
      setState(() {
        _text = 'Invalid section or category';
      });
      return;
    }

    final loadedCategory = Provider.of<AppDataProvider>(context, listen: false)
        .categoryItems
        .firstWhere((c) => c.id == categoryId);
    final section =
        loadedCategory.sections.firstWhere((s) => s.id == sectionId);

    // Check if the index is within the valid range of sectionData
    if (widget.index >= 0 && widget.index < loadedCategory.sections.length) {
      final response = await http.get(
        Uri.parse(
            'https://raw.githubusercontent.com/RSLDVD/flutter_hot_collection/master/lib/Routes${loadedCategory.sections[widget.index].sourceFilePath}.dart'),
      );
      if (response.statusCode == 200) {
        setState(() {
          _text = response.body;
        });
      } else {
        // Failed to fetch code from GitHub, display an error message
        setState(() {
          _text = 'Failed to fetch code from GitHub: ${response.statusCode}';
        });
      }
    } else {
      // Invalid index, display an error message
      setState(() {
        _text = 'Invalid index: ${widget.index}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_text);
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
