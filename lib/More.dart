import 'package:flutter/material.dart';

import 'GradientButtonFb1.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: More_(),
    );
  }
}

class More_ extends StatefulWidget {
  const More_({Key? key}) : super(key: key);

  @override
  State<More_> createState() => _More_State();
}

class _More_State extends State<More_> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: GradientButtonFb1(
              text: "Text Format",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GradientButtonFb1(
              text: "Contact Us",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GradientButtonFb1(
              text: "Share App",
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: GradientButtonFb1(
              text: "Rate App",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
