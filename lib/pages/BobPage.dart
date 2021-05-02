import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';

class BobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Text("Bob Page"),
            Navigation(),
          ],
        ),
      ),
    );
  }
}
