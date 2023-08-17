import 'dart:math';

import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  final String id;
  final String category;
  final int index;
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
  final String sourceFilePath;

  const SectionItem({
    Key? key,
    required this.id,
    required this.category,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagePath,
    required this.sourceFilePath,
  }) : super(key: key);

  void _selectSection(BuildContext context) {
    // ignore: avoid_print
    print('Tapped on section item: $title');
    Navigator.pushNamed(
      context,
      '/section_page',
      arguments: {
        'id': id,
        //  'index': index.toString(),
        //  'title': title,
        'category': category,
        //  'subtitle': subtitle,
        //  'description': description,
        //  'sourceFilePath': sourceFilePath
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // List<Category> categories= context.watch<CategoryProvider>().categoryData;

//
    Color getRandomColor() {
      Random random = Random();
      int b = random
          .nextInt(255); // Generate a random value between 0 and 255 for red
      int g =random
          .nextInt(255); // Generate a random value between 0 and 255 for green
      int r = random
          .nextInt(255); // Generate a random value between 0 and 255 for blue
      return Color.fromARGB(
          122, r, g, b); // Create a Color object using the random RGB values
    }

//
    return InkWell(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: ListTile(
          isThreeLine: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          //minLeadingWidth: 200,

          leading: CircleAvatar(
            backgroundColor: getRandomColor(),
            radius: 20,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitle, style: const TextStyle(fontSize: 13)),
          //trailing: Text(category),
        ),
      ),
      onTap: () {
        _selectSection(context);
      },
    );
  }
}
