import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // ضيف الاستيراد ده

class TransactionModel {
  final String title;
  final String category;
  final String price;
  final Widget icon;
  final Color? iconColor;
  final bool isExpense;

  const TransactionModel({
    required this.title,
    required this.category,
    required this.price,
    required this.icon,
    this.iconColor,
    this.isExpense = true,
  });
}