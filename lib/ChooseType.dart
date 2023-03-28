import 'package:flutter/material.dart';
import 'package:matrix9/GradientButtonFb1.dart';
import 'package:matrix9/QeustionsPageIndividual.dart';

import 'LeadersQPage.dart';

class ChooseType extends StatelessWidget {
  const ChooseType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: _ChooseType(),
    );
  }
}

class _ChooseType extends StatefulWidget {
  const _ChooseType({super.key});

  @override
  State<_ChooseType> createState() => __ChooseTypeState();
}

class __ChooseTypeState extends State<_ChooseType> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                                builder: (context) =>
                                    const QeustionsLeadersPage()),
                          );
                        },
                        child: Text('For Leaders',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16)),
                      ))),
              Text("The employee has reportees",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0)),
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
                                builder: (context) => const QeustionsPage()),
                          );
                        },
                        child: Text('For Individual Contributors',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16)),
                      ))),
              Text("No one reports to them",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0)),
            ],
          ),
        ));
  }
}
