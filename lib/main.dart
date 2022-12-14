// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names

import 'package:cargo/explore_page.dart';
import 'package:cargo/welcome_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CarGoPhoneSystemActionBar();
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

void CarGoPhoneSystemActionBar() {
  return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.deepPurple,
  ));
}
