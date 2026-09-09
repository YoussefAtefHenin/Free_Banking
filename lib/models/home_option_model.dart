import 'package:flutter/material.dart';

class HomeOptionModel {
  final String iconImage;
  final String name;
  final String desc;
  final double price;
  final Color colorPrice;

  HomeOptionModel({
    required this.iconImage,
    required this.name,
    required this.desc,
    required this.price,
    required this.colorPrice,
  });
}
