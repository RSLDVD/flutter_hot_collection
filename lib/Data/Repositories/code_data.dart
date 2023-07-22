import 'package:flutter_hot/Data/Models/code.dart';

class CodeRepository{
  static List<Code> codeData = [
  const Code(id: 'c1',  category: 'cat1',section: 's1',title: 'Icon', 
  code: "import 'package:flutter/material.dart';\n\n"
            "\n"
            "class WidgetIconEx extends StatelessWidget {\n"
            "  @override\n"
            "  Widget build(BuildContext context) {\n"
            "    return Scaffold(\n"
            "      body: Column(\n"
            "        mainAxisAlignment: MainAxisAlignment.center,\n"
            "        children: [\n"
            "          Icon(Icons.email, size: 45.0, color: Colors.red[200]),\n"
            "          Icon(Icons.home, size: 45.0, color: Colors.red[200]),\n"
            "          Icon(Icons.repeat, size: 45.0, color: Colors.red[200]),\n"
            "          Icon(Icons.remove_circle, size: 45.0, color: Colors.red[200]),\n"
            "          Icon(Icons.wb_auto, size: 45.0, color: Colors.red[200]),\n"
            "        ],\n"
            "      ),\n"
            "    );\n"
            "  }\n"
            "}\n",
    ),
    // Add more code instances if needed
  ];
}