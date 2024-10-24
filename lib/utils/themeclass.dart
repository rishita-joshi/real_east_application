import 'package:flutter/material.dart';

class ThemeClass {
  static Color greyColor = Colors.grey;
  static Color blackColor = Colors.black;
  static Color darkGreyColor = Colors.grey.shade900;
  static Color lightYellowColor = Colors.amber.shade100;
  static Color lightGreyColor = Colors.grey.shade100;
  static Color orangeColor = Colors.orange;
  static Color primaryColor = Colors.green;
}

List<BoxShadow> defaultBoxShadow({
  Color? shadowColor,
  double? blurRadius,
  double? spreadRadius,
  Offset offset = const Offset(0.0, 0.0),
}) {
  return [
    BoxShadow(
      color: shadowColor ?? Colors.grey.withOpacity(0.2),
      blurRadius: blurRadius ?? 4.0,
      spreadRadius: spreadRadius ?? 4.0,
      offset: offset,
    )
  ];
}

void hideKeyboard(context) => FocusScope.of(context).requestFocus(FocusNode());
