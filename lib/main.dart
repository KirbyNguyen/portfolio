import 'package:flutter/material.dart';
import 'package:portfolio/pages/AboutPage.dart';
import 'package:portfolio/pages/HomePage.dart';
import 'package:portfolio/pages/ProjectPage.dart';

final appRoutes = {
  "/home": (context) => HomePage(),
  "/about": (context) => AboutPage(),
  "/projects": (context) => ProjectPage(),
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.grey,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: "Ubuntu",
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      initialRoute: "/home",
      routes: appRoutes,
    );
  }
}
