import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';

class ProjectPage extends StatelessWidget {
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
        child: ProjectInformation(),
      ),
    );
  }
}

class ProjectInformation extends StatelessWidget {
  const ProjectInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Center(
            child: Text("Project Page"),
          ),
        ),
        Navigation(),
      ],
    );
  }
}
