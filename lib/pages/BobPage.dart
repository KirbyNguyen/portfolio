import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/Navigation.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL() async {
  String url =
      "https://drive.google.com/file/d/1ybMQw918769S7EFclA-rZHq0iqwpRWlb/view?usp=sharing";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
        child: BobInformation(),
      ),
    );
  }
}

class BobInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "BOB'S ADVENTURE",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontSize: 50.0,
                      ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    text: "A platformer game built with ",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          letterSpacing: 5.0,
                        ),
                    children: [
                      TextSpan(
                        text: "GameMaker 2",
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.green,
                            ),
                      ),
                      WidgetSpan(
                        child: Image.asset(
                          'assets/gamemaker.png',
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
                  "This game was inspired by early Kirby games",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Every sprite was drawn by me!",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Three levels with three distinct enemy types",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  "Collect fruits to increase points, and heal yourself!",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        letterSpacing: 3.0,
                      ),
                ),
                SizedBox(height: 15),
                TextButton(
                  onPressed: _launchURL,
                  child: Text(
                    "Download",
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
        Navigation(),
      ],
    );
  }
}
