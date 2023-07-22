import 'package:flutter/material.dart';

import '../../SectionPage/UI/sections_page_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Gradient color;
  final String imagePath;
  const CategoryItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.color,
      required this.imagePath})
      : super(key: key);

  void _selectCategory(BuildContext c) {
    // must change and update  navigator.of(c).pushNamed('/categories', arguments :{'id' : id })
    Navigator.of(c).push(
      MaterialPageRoute(
        builder: ((_) {
          return SectionsPageScreen(
              categoryId: id,
              categoryTitle: title,
              categoryDescription: '',
              categoryImagePath: imagePath);
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Colors.black38,
      borderRadius:  BorderRadius.circular(5),
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 2, top: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
            top: 10,
            height: 150,
            width: 225,
            child:Image.asset(imagePath, fit: BoxFit.contain,) 
          ),
          Positioned(
              bottom: 40,
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:Color(0xff090088)),
              )),
        ]),
      ),
    );
  }
}
