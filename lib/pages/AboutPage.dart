import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/components/Navigation.dart';

const _resumeURL =
    "https://drive.google.com/file/d/1sCUkxh_fjYYdt-Ga8pqSwymlYJ0fYUa6/view?usp=sharing";
const _gitURL = "https://github.com/KirbyNguyen";
const _linkedInURL = "https://www.linkedin.com/in/ducnguyen-kirby/";

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class AboutPage extends StatelessWidget {
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
        child: AboutInformation(),
      ),
    );
  }
}

class AboutInformation extends StatelessWidget {
  const AboutInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(flex: 3, child: Information()),
        Expanded(flex: 1, child: OhterLinks()),
        Navigation(),
      ],
    );
  }
}

class OhterLinks extends StatelessWidget {
  const OhterLinks({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("My other links"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _launchURL(_gitURL);
              },
              child: Image.asset(
                'assets/GitHub-Logo.png',
                width: 75.0,
                height: 75.0,
                alignment: Alignment.bottomCenter,
              ),
            ),
            SizedBox(width: 20.0),
            GestureDetector(
              onTap: () {
                _launchURL(_linkedInURL);
              },
              child: Image.asset(
                'assets/linkedin-talent.png',
                height: 100.0,
                width: 100.0,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Information extends StatelessWidget {
  const Information({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Hi! My name is Duc Nguyen. I am an undergrad at Cal State Fullerton."),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "I am a mobile developer with Flutter and Dart. I have also worked with React Native before."),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "I am also a self-taught game designer. My engine of choose right now is GameMaker 2."),
          SizedBox(
            height: 20.0,
          ),
          Text("I am proficient in Dart, JavaScript, C++, and Java"),
          SizedBox(
            height: 20.0,
          ),
          Text("You can learn more about me through my resume"),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              _launchURL(_resumeURL);
            },
            child: Text(
              "View Resume",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
