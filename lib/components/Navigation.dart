import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                  child: Text("HOME"),
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  }),
              GestureDetector(
                  child: Text("ABOUT"),
                  onTap: () {
                    Navigator.pushNamed(context, "/about");
                  }),
              GestureDetector(
                  child: Text("PROJECTS"),
                  onTap: () {
                    Navigator.pushNamed(context, "/projects");
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
