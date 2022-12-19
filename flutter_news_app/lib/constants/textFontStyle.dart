import 'package:flutter/material.dart';
import 'colors.dart';

TextTheme textFontStyle() {
  return const TextTheme(
    headline1: TextStyle(fontSize: 96, color: nwblack),
    headline2:
        TextStyle(fontSize: 60, color: nwblack, fontWeight: FontWeight.bold),
    headline3:
        TextStyle(fontSize: 28, color: nwblack, fontWeight: FontWeight.bold),
    headline4: TextStyle(
        fontSize: 34,
        color: nwwhite,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal),
    headline5:
        TextStyle(fontSize: 24, color: nwblack, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 20, color: nwwhite),
    subtitle1: TextStyle(fontSize: 20, color: nwblack),
    subtitle2: TextStyle(fontSize: 18, color: nwgrey),
  );
}
