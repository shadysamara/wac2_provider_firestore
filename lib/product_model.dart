import 'package:flutter/material.dart';

class ProductModel {
  int id;
  String name;
  num price;
  String imageUrl;
  bool isFavourite;
  ProductModel(
    this.id, {
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    this.isFavourite = false,
  });
}
