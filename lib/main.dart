// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfolioapp/about.dart';
import 'package:portfolioapp/home.dart';

void main() {
  runApp(
      MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "home",
    routes: {
      "home" : (context) => MyHome(),
      "about" : (context) => MyAbout()
    },
  ));
}
