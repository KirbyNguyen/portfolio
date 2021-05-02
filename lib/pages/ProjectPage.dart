import 'package:carousel_slider/carousel_slider.dart';
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
        Flexible(
          flex: 1,
          child: Center(
            child: Text("More are coming"),
          ),
        ),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                BudgetPrototype(),
                SizedBox(width: 200),
                BudgetPrototype(),
              ],
            ),
          ),
        ),
        Navigation(),
      ],
    );
  }
}

class BudgetPrototype extends StatelessWidget {
  const BudgetPrototype({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "A BUDGET APP PROTOTYPE",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontSize: 50.0,
                    ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Learn More"),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Image.asset(
            'screenshotsBudget/1.png',
            scale: 2.0,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}
