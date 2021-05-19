import 'package:flutter/material.dart';

class FontSizes {
  static double scale = 1.2;
  static double get body => 14 * scale;
  static double get body2 => 13 * scale;
  static double get bodySm => 12 * scale;
  static double get title => 14 * scale;
  static double get titleM => 18 * scale;
  static double get sizeXXl => 28 * scale;
  static double get sizeXXXl => 21 * scale;

}
 
class TextStyles {
  static TextStyle get title =>TextStyle(fontSize: FontSizes.title);
  static TextStyle get titleM =>TextStyle(fontSize: FontSizes.titleM);
  static TextStyle get titleNormal => title.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get titleMedium => titleM.copyWith(fontWeight: FontWeight.w300);
  static TextStyle get h1Style => TextStyle(fontSize: FontSizes.sizeXXl, fontWeight: FontWeight.bold);
  static TextStyle get h2Style => TextStyle(fontSize: FontSizes.sizeXXXl, fontWeight: FontWeight.bold,fontFamily: "MarckScript",);
  static TextStyle get body => TextStyle(fontSize: FontSizes.body, fontWeight: FontWeight.w300);
  static TextStyle get bodySm => body.copyWith(fontSize: FontSizes.bodySm,fontFamily: "URWGeometricArabic");
  static TextStyle get body2Sm => body.copyWith(fontSize: FontSizes.body2,fontFamily: "MarckScript");

}