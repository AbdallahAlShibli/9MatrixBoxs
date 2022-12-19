import 'package:flutter/material.dart';

import 'AboutTool.dart';
import 'ChooseType.dart';
import 'GradientButtonFb1.dart';
import 'More.dart';
import 'WhatIs9Matrix.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '9 Box Matrix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '9 Box Matrix'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Image(
                image: AssetImage('images/9_box-bg.png'),
                width: 400,
                height: 400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: GradientButtonFb1(
                text: "Start Assessment",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChooseType()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: GradientButtonFb1(
                text: "What is 9 Box Matrix?",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WhatIs9Matrix()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: GradientButtonFb1(
                text: "About this tool",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutTool()),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: GradientButtonFb1(
                text: "More",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => More()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


