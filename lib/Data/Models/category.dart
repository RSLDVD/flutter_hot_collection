import 'package:flutter/material.dart';

class Category {
  final String id;
  final String tittle;
  final Gradient color;
  final String imagePath;

  const Category(
      {required this.id,
      required this.tittle,
      required this.color,
      required this.imagePath});
}
