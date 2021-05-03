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
          flex: 5,
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

const List<String> budgetLink = [
  "https://i.postimg.cc/G3Z4qdgb/1.png",
  "https://i.postimg.cc/d1h0jx87/2.png",
  "https://i.postimg.cc/PqrJPxJQ/3.png",
  "https://i.postimg.cc/HxFkZ926/4.png",
  "https://i.postimg.cc/wjk3qJqB/5.png",
  "https://i.postimg.cc/htnfRMqw/6.png",
  "https://i.postimg.cc/9f8MThq5/7.png",
];

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
          flex: 4,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: budgetLink
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.network(
                        item,
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

const List<String> bobLink = [
  "https://i.postimg.cc/tgMqJNL9/1.png",
  "https://i.postimg.cc/1Xxyc5mT/2.png",
  "https://i.postimg.cc/W3q2kJvg/3.png",
  "https://i.postimg.cc/L4f94fvM/4.png",
  "https://i.postimg.cc/Kv2Z1zs3/5.png",
  "https://i.postimg.cc/J0bMTVth/6.png",
];

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
          flex: 4,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: bobLink
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.network(
                        item,
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
