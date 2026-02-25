import 'package:flutter/material.dart';

class appbar {
  AppBarTheme appBarTheme = const AppBarTheme(
    shadowColor: Color.fromARGB(255, 95, 60, 47),
    elevation: 20,
    centerTitle: true,
    toolbarHeight: 60,
    titleTextStyle: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 253, 253)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
    ),
    backgroundColor: Color(0xff799C90),
  );
}