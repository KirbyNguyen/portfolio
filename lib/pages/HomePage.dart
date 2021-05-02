import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';

class HomePage extends StatelessWidget {
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
        child: Introduction(),
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Duc Nguyen",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 50.0,
                      ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "Computer Science Student ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                    children: <TextSpan>[
                      TextSpan(text: "at "),
                      TextSpan(
                        text: "CSUF",
                        style:
                            Theme.of(context).textTheme.bodyText2.copyWith(
                                  color: Colors.blue,
                                ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "Cross-platform developer with ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                    children: [
                      TextSpan(
                        text: "Flutter",
                        style:
                            Theme.of(context).textTheme.bodyText2.copyWith(
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
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "Game Designer ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Navigation(),
      ],
    );
  }
}


