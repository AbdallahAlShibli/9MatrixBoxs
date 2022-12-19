
import 'package:flutter/material.dart';

import 'GradientButtonFb1.dart';
import 'QeustionsPage.dart';
import 'QuestionModel.dart';
import 'main.dart';

class IndividualResult extends StatelessWidget {
  const IndividualResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Individual Result Page",
      home: _IndividualResult(),
    );
  }
}

class _IndividualResult extends StatefulWidget {
  const _IndividualResult({Key? key}) : super(key: key);

  @override
  State<_IndividualResult> createState() => __IndividualResultState();
}

class __IndividualResultState extends State<_IndividualResult> {
  var resultType = "High Performer";
  var resultTypeDesc =
      "High Performance - Medium Potential: The employee's performance is very high with high quality of work. Always achieving what is required. The employee could be focusing a lot on his/her current role or department and trying to excel there. He/She plays a big role in driving the objectives of the company.";

  var strategy =
      "-Provide motivation and appreciation for the accomplished work.\n-Have a 1-to-1 meeting to check their aspiration, and if they want to move up, provide some guidance to help them grow.\n-Check if they are entitled to promotion.\n-Be clear and honest with them, if you are unable to promote them (due to policy or whatever reason).\n-Link the department objectives with the organization objectives to expand the employee's knowledge.";
  @override
  Widget build(BuildContext context) {
    List<QuestionModel>? list = ListClass().listData();
    print(list!.length);

    return Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildResult(),
            Padding(
              padding: EdgeInsets.only(top: 15),
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
                height: 150,
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
              padding: EdgeInsets.all(10),
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
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
          padding: EdgeInsets.all(10),
          width: 415,
          height: 310,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle, border: Border.all(width: 2)),
          child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Row(children: [
                  _box("Potential\nGem", Icons.diamond),
                  _box("High\nPotential", Icons.rocket),
                  _box("Star", Icons.star)
                ]),
                Row(children: [
                  _box("Inconsistent\nPlayer", Icons.person),
                  _box("Core\nPlayer", Icons.back_hand),
                  _box("High\nPerformer", Icons.car_crash)
                ]),
                Row(children: [
                  _box("Risk", Icons.dangerous),
                  _box("Average\nPerformer", Icons.scale),
                  _box("Solid\nPerformer", Icons.person)
                ]),
              ]))),
    );
  }

  Widget _box(txt, img) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 110,
          height: 70,
          decoration: BoxDecoration(
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
          ),
        ));
  }
}
