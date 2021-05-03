import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL() async {
  String url = "https://github.com/KirbyNguyen/budget";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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

class BudgetPage extends StatelessWidget {
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
        child: BudgetInformation(),
      ),
    );
  }
}

class BudgetInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "BUDGET APP PROTOTYPE",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 50.0,
                      ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "A budgeting app built with ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                    children: [
                      TextSpan(
                        text: "Flutter",
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.blue,
                            ),
                      ),
                      WidgetSpan(
                        child: Image.asset(
                          'assets/flutter_logo.png',
                          height: 50.0,
                          width: 50.0,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Supported by ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                    children: [
                      TextSpan(
                        text: "Firebase",
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.red,
                            ),
                      ),
                      WidgetSpan(
                        child: Image.asset(
                          'assets/firebase_logo.png',
                          height: 50.0,
                          width: 50.0,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "The user can create a category they want to check",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "They can also log in transactions (such as expense or income)",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: _launchURL,
                  child: Text(
                    "GitHub Repo",
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
        ),
        Expanded(
          flex: 5,
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
        Navigation(),
      ],
    );
  }
}
