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
                BlobAdventure(),
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
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 50.0,
                      color: Colors.white,
                    ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/budget");
                },
                child: Text(
                  "Learn More",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 30.0,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: [1, 2, 3, 4, 5, 6, 7]
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.asset(
                        'screenshotsBudget/$item.png',
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class BlobAdventure extends StatelessWidget {
  const BlobAdventure({
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
                "BLOB'S ADVENTURE",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 50.0,
                      color: Colors.white,
                    ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/bob");
                },
                child: Text(
                  "Learn More",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 30.0,
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: [1, 2, 3, 4, 5, 6]
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.asset(
                        'screenshotsBlob/$item.png',
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
