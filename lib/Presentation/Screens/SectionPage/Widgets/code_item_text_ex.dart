// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;
// import 'package:flutter_highlight/themes/github.dart';
// import 'package:flutter_highlight/flutter_highlight.dart';
// import 'package:provider/provider.dart';
// import '/Providers/app_data_provider.dart';

// class CodeItemTextEx extends StatefulWidget {
//   final int indx;

//   const CodeItemTextEx({super.key, required this.indx});

//   @override
//   State<CodeItemTextEx> createState() => _CodeItemTextExState();
// }

// class _CodeItemTextExState extends State<CodeItemTextEx> {
//   String _text = '';
  
//   var indx;
//   //int? index;
  

//   @override
//   void initState() {
    
//     super.initState();
//         Future.delayed(Duration.zero, () {
          
//           //fetchTextFromGitHub();
//     //   fetchTextFromGitHub();
//      });
//   }

//   @override
//   void dispose() {
//     // Perform cleanup operations here (if needed)
//     super.dispose();
//   }

//   @override
//   void didChangeDependencies() {
//     // This method is called when dependencies change, including Provider updates.
//     // You can safely call fetchTextFromGitHub() here.
    


//   super.didChangeDependencies();
//   }

// Future<void> fetchTextFromGitHub() async {
//   final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
//   if (routeArgs == null) {
//     // Handle the case when route arguments are missing or invalid
//     setState(() {
//       _text = 'Invalid or Missing Route Arguments';
//     });
//     return;
//   }

//   final categoryId = routeArgs['category'] as String;
//   final sectionId = routeArgs['id'] as String;

//   if (sectionId == null || categoryId == null) {
//     // Handle the case when 'id' or 'category' is missing in the route arguments
//     setState(() {
//       _text = 'Invalid section or category';
//     });
//     return;
//   }

//   final index = int.parse(routeArgs['index'].toString());

//   final loadedCategory = Provider.of<AppDataProvider>(context, listen: false)
//       .categoryData
//       .firstWhere((c) => c.id == categoryId);

//   if (indx >= 0 && indx < loadedCategory.sections.length) {
//     final loadedSection = loadedCategory.sections[indx];
//     var response = await http.get(
//       Uri.parse(
//           'https://raw.githubusercontent.com/RSLDVD/flutter_hot_collection/master/lib/Routes${loadedSection.sourceFilePath}.dart'),
//     );
//     if (response.statusCode == 200) {
//       setState(() {
//         _text = response.body;
//         print('Response Body: $_text');
//       });
//     } else {
//       // Failed to fetch code from GitHub, display an error message
//       setState(() {
//         _text = 'Failed to fetch code from GitHub: ${response.statusCode}';
//         print('Error: $_text');
//       });
//     }
//   } else {
//     // Invalid index, display an error message
//     setState(() {
//       _text = 'Invalid index: $indx';
//     });
//   }
// }



//   @override
//   Widget build(BuildContext context) {
//     print(_text);
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: HighlightView(
//             _text,
//             language: 'dart',
//             theme: githubTheme,
//             padding: const EdgeInsets.all(9),
//           ),
//         ),
//       ),
//     );
//   }
// }
