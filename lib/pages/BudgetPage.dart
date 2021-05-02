import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';

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
              ],
            ),
          ),
        ),
        Expanded(
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
        Navigation(),
      ],
    );
  }
}
