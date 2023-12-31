import 'package:flutter/material.dart';

class CustomTextStyle {
  Color color2 ;
  double? fontSize2 ;
  CustomTextStyle(this.fontSize2 , this.color2);
  static TextStyle get appBarTextStyle => const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
 TextStyle get titleWhiteTextStyle =>  TextStyle(color: color2, fontSize: fontSize2, fontWeight: FontWeight.bold);
  static TextStyle get titleTextStyle => const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle get bodyTextStyle => const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal);
  static TextStyle get bodyWhiteTextStyle => const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal);
}