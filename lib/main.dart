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
                width: 300,
                height: 300,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 126, 192),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChooseType()),
                        );
                      },
                      child: Text('Start Assessment',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                    ))),
            Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 126, 192),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhatIs9Matrix()),
                        );
                      },
                      child: Text('What is 9 Box Matrix?',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                    ))),
            Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 126, 192),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutTool()),
                        );
                      },
                      child: Text('About this tool',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                    ))),
            Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    width: 280,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 26, 126, 192),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const More()),
                        );
                      },
                      child: Text('More',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16)),
                    ))),
          ],
        ),
      ),
    );
  }
}
