import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hot/Providers/category_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hot/constant.dart';

class SectionItem extends StatelessWidget {
  final String id;
  final String category;
  final int index;
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
  final String sourceFilePath;
  final bool isFavorite;

  const SectionItem(
      {Key? key,
      required this.id,
      required this.category,
      required this.index,
      required this.title,
      required this.subtitle,
      required this.description,
      required this.imagePath,
      required this.sourceFilePath,
      required this.isFavorite})
      : super(key: key);

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
    // Color getRandomColor() {
    //   Random random = Random();
    //   int b = random
    //       .nextInt(255); // Generate a random value between 0 and 255 for red
    //   int g = random
    //       .nextInt(255); // Generate a random value between 0 and 255 for green
    //   int r = random
    //       .nextInt(255); // Generate a random value between 0 and 255 for blue
    //   return Color.fromARGB(
    //       220, r, g, b); // Create a Color object using the random RGB values
    // }

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
              backgroundColor: colors[index],
              radius: 20,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                    fontFamily: 'OpenSansCondensed',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(subtitle,
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                )),
            trailing: IconButton(
              onPressed: () {
                Provider.of<CategoryProvider>(context, listen: false)
                    .toggleSectionFavorite(id, category);
              },
              icon: isFavorite
                  ? SvgPicture.asset(
                      'assets/icons/bookmark-fill.svg',
                      width: 25,
                      height: 25,
                      color: const Color(0xFFFFBD39),
                    )
                  : SvgPicture.asset(
                      'assets/icons/bookmark-border.svg',
                      width: 20,
                      height: 20,
                      color: Theme.of(context).appBarTheme.iconTheme?.color,
                    ),
            ) //
            ),
      ),
      onTap: () {
        _selectSection(context);
      },
    );
  }
}
