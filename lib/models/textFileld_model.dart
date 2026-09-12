import 'package:flutter/material.dart';

class TextfileldModel {
  final String? label;
  final String? hint;
  final IconData? Ticon;
  final Widget? suffix;
  final bool ?obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController controller;

const TextfileldModel({
   this.label,
   this.hint,
   this.Ticon,
   this.suffix,
  this.obscureText,
   this.validator,
  this.keyboardType,
required this.controller,


  });



}