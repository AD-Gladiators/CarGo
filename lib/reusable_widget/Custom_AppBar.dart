// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar CarGoAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color.fromARGB(0, 255, 255, 255),
    shadowColor: Color.fromARGB(0, 255, 255, 255),
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Image.asset(
        'assets/CarGo2.png',
        height: 120.0,
        width: 90.0,
      ),
    ),
  );
}

AppBar CarGoAppBarWithoutBack() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Image.asset(
        'assets/CarGo2.png',
        color: Colors.black,
        height: 120.0,
        width: 90.0,
      ),
    ),
  );
}
