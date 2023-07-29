import 'package:flutter/material.dart';
import 'package:flutter_hot/Data/Models/section.dart';

class Category {
  final String id;
  final String tittle;
  final Gradient color;
  final String imagePath;
  final List<Section> sections; 

  const Category(
      {required this.id,
      required this.tittle,
      required this.color,
      required this.imagePath,
      required this.sections});
}
