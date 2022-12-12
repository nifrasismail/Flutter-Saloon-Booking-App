import 'package:flutter/material.dart';
import './constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "OpenSans",
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: textColor),
      bodyText2: TextStyle(color: textColor),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

const headingTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w700,
);

