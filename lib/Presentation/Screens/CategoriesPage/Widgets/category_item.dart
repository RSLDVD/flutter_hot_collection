import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final List<String> subtitle;
  //final Gradient color;
  final String imagePath;
  const CategoryItem(
      {Key? key,
      required this.id,
      required this.title,
      required this.subtitle,
      required this.imagePath})
      : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/category',
      arguments: {
        'id': id,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      //splashColor: Colors.black38,
      borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(85),
            topRight: Radius.circular(85),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, //Colors.white24,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(85),
            topRight: Radius.circular(85),
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            top: 1,
            // right: 4,
            //left: 1,
            // height: 180,
            // width: 240,

            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .accentColor
                        .withOpacity(0.7), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: const Offset(0, 3), // Offset in the y direction
                  ),
                ],
                shape: BoxShape.circle,
              ),
              child: Hero(
                tag: id,
                child: CircleAvatar(
                  radius: 62,
                  backgroundImage: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 135,
              left: 2,
              child: Text(
                title,
                style:  TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color:Theme.of(context).appBarTheme.iconTheme?.color,
                ),
              )),
          Positioned(
              top: 160,
              left: 2,
              child: SizedBox(
                width: 150,
                child: Wrap(
                  spacing: 4,
                  runSpacing: 1,
                  children: subtitle.map((s) {
                    return Text(
                      s,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.5,
                          fontWeight: FontWeight.w100,
                          color: Theme.of(context).textTheme.subtitle1?.color),
                    );
                  }).toList(),
                ),
              )),
        ]),
      ),
    );
  }
}
