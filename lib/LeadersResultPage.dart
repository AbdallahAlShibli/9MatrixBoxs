import 'package:flutter/material.dart';

import 'GradientButtonFb1.dart';
import 'LeadersQPage.dart';
import 'QeustionsPageIndividual.dart';
import 'QuestionModel.dart';
import 'ResultsInfoLea.dart';
import 'main.dart';

class LeadersResultPage extends StatelessWidget {
  const LeadersResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Individual Result Page",
      home: _LeadersResultPage(),
    );
  }
}

class _LeadersResultPage extends StatefulWidget {
  const _LeadersResultPage({Key? key}) : super(key: key);

  @override
  State<_LeadersResultPage> createState() => __LeadersResultPageState();
}

class __LeadersResultPageState extends State<_LeadersResultPage> {
  var resultType = resultLeaData[0].result;
  var resultTypeDesc = resultLeaData[0].ResultText;
  var strategy = resultLeaData[0].Strategy;

  late var color1,
      color2,
      color3,
      color4,
      color5,
      color6,
      color7,
      color8,
      color9;

  @override
  Widget build(BuildContext context) {
    color1 = Colors.white;
    color2 = Colors.white;
    color3 = Colors.white;
    color4 = Colors.white;
    color5 = Colors.white;
    color6 = Colors.white;
    color7 = Colors.white;
    color8 = Colors.white;
    color9 = Colors.white;

    getResults();

    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30, right: 10, left: 10),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildResult(),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Result:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 360,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 2)),
                child: Text(
                  "$resultType\n"
                  "......................................................................................\n"
                  "$resultTypeDesc",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text("Recommended strategy:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 360,
                height: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 2)),
                child: Text(
                  "$strategy",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: GradientButtonFb1(
                text: "Fhinish",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
            ),
          ],
        ));
  }

  Widget _buildResult() {
    return Container(
        alignment: Alignment.center,
        width: 500,
        height: 250,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, border: Border.all(width: 2)),
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(children: [
            _box("Potential\nGem", Icons.diamond, color1),
            _box("High\nPotential", Icons.rocket, color2),
            _box("Star", Icons.star, color3)
          ]),
          Row(children: [
            _box("Inconsistent\nPlayer", Icons.person, color4),
            _box("Core\nPlayer", Icons.back_hand, color5),
            _box("High\nPerformer", Icons.car_crash, color6)
          ]),
          Row(children: [
            _box("Risk", Icons.dangerous, color7),
            _box("Average\nPerformer", Icons.scale, color8),
            _box("Solid\nPerformer", Icons.person, color9)
          ]),
        ])));
  }

  Widget _box(txt, img, colorr) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            width: 102,
            height: 66,
            decoration: BoxDecoration(
                color: colorr,
                shape: BoxShape.rectangle,
                border: Border.all(width: 0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Text(
                  txt,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0),
                ),
                Icon(img)
              ],
            )));
  }

  void getResults() {
    List<QuestionModel>? list = ListLeaClass().listDataFLea();
    var anReslutP1G42 = 0;
    var anReslutP1G43 = 0;
    //Colors.green[300];
    for (int i = 0; i < list!.length; i++) {
      if (i <= 4) {
        anReslutP1G42 += list[i].aNo;
      } else {
        anReslutP1G43 += list[i].aNo;
      }
      print(list[i].aNo);
    }

    if (anReslutP1G42 >= 22 && anReslutP1G43 >= 22) {
      color3 = Colors.green[300];
      resultType = resultLeaData[0].result;
      resultTypeDesc = resultLeaData[0].ResultText;
      strategy = resultLeaData[0].Strategy;
    } else if (anReslutP1G42 >= 22 &&
        anReslutP1G43 >= 13 &&
        anReslutP1G43 < 22) {
      color2 = Colors.green[300];
      resultType = resultLeaData[1].result;
      resultTypeDesc = resultLeaData[1].ResultText;
      strategy = resultLeaData[1].Strategy;
    } else if (anReslutP1G42 >= 22 && anReslutP1G43 < 13) {
      color1 = Colors.green[300];
      resultType = resultLeaData[2].result;
      resultTypeDesc = resultLeaData[2].ResultText;
      strategy = resultLeaData[2].Strategy;
    } else if (anReslutP1G42 < 22 &&
        anReslutP1G42 >= 18 &&
        anReslutP1G43 >= 22) {
      color6 = Colors.green[300];
      resultType = resultLeaData[3].result;
      resultTypeDesc = resultLeaData[3].ResultText;
      strategy = resultLeaData[3].Strategy;
    } else if (anReslutP1G42 < 22 &&
        anReslutP1G42 >= 18 &&
        anReslutP1G43 >= 13 &&
        anReslutP1G43 < 22) {
      color5 = Colors.green[300];
      resultType = resultLeaData[4].result;
      resultTypeDesc = resultLeaData[4].ResultText;
      strategy = resultLeaData[4].Strategy;
    } else if (anReslutP1G42 < 22 &&
        anReslutP1G42 >= 18 &&
        anReslutP1G43 < 13) {
      color4 = Colors.green[300];
      resultType = resultLeaData[5].result;
      resultTypeDesc = resultLeaData[5].ResultText;
      strategy = resultLeaData[5].Strategy;
    } else if (anReslutP1G42 < 18 && anReslutP1G43 >= 22) {
      color9 = Colors.green[300];
      resultType = resultLeaData[6].result;
      resultTypeDesc = resultLeaData[6].ResultText;
      strategy = resultLeaData[6].Strategy;
    } else if (anReslutP1G42 < 18 &&
        anReslutP1G43 >= 13 &&
        anReslutP1G43 < 22) {
      color8 = Colors.green[300];
      resultType = resultLeaData[7].result;
      resultTypeDesc = resultLeaData[7].ResultText;
      strategy = resultLeaData[7].Strategy;
    } else if (anReslutP1G42 < 18 && anReslutP1G43 < 13) {
      color7 = Colors.green[300];
      resultType = resultLeaData[8].result;
      resultTypeDesc = resultLeaData[8].ResultText;
      strategy = resultLeaData[8].Strategy;
    }
  }
}
