import 'dart:convert';

import 'package:flutter/material.dart';
import 'GradientButtonFb1.dart';
import 'GradientButtonFbNext.dart';
import 'IndividualResult.dart';
import 'LeadersResultPage.dart';
import 'QuestionModel.dart';
import 'QuestionsLea.dart';

class QeustionsLeadersPage extends StatelessWidget {
  const QeustionsLeadersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Qestions Page",
      home: Scaffold(
        appBar: null,
        body: _QeustionsLeadersPage(),
      ),
    );
  }
}

List<QuestionModel>? dataListLea = [];

enum ANo { a1, a2, a3, a4, a5 }

class _QeustionsLeadersPage extends StatefulWidget {
  const _QeustionsLeadersPage({Key? key}) : super(key: key);

  @override
  State<_QeustionsLeadersPage> createState() => __QeustionsLeadersPageState();
}

class __QeustionsLeadersPageState extends State<_QeustionsLeadersPage> {
  int counter = 0;

  String theQ = questionsListT1Lea[0].question;
  String ans1 = questionsListT1Lea[0].answer1;
  String ans2 = questionsListT1Lea[0].answer2;
  String ans3 = questionsListT1Lea[0].answer3;
  String ans4 = questionsListT1Lea[0].answer4;
  String ans5 = questionsListT1Lea[0].answer5;
  late String q = (counter + 1).toString();
  ANo? aNo = ANo.a1;

  @override
  Widget build(BuildContext context) {
    // dataListLea!.add(QuestionModel(counter + 1, convert()));
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 360,
                height: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 2)),
                child: Text(
                  "Q$q\n"
                  ".........................................................................\n"
                  "$theQ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      letterSpacing: 0.0,
                      wordSpacing: 2.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qTXT(ans1),
                    Radio<ANo>(
                      value: ANo.a1,
                      groupValue: aNo,
                      onChanged: (ANo? value) {
                        setState(() {
                          aNo = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qTXT(ans2),
                    Radio<ANo>(
                      value: ANo.a2,
                      groupValue: aNo,
                      onChanged: (ANo? value) {
                        setState(() {
                          aNo = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qTXT(ans3),
                    Radio<ANo>(
                      value: ANo.a3,
                      groupValue: aNo,
                      onChanged: (ANo? value) {
                        setState(() {
                          aNo = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qTXT(ans4),
                    Radio<ANo>(
                      value: ANo.a4,
                      groupValue: aNo,
                      onChanged: (ANo? value) {
                        setState(() {
                          aNo = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                width: 390,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all(width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qTXT(ans5),
                    Radio<ANo>(
                      value: ANo.a5,
                      groupValue: aNo,
                      onChanged: (ANo? value) {
                        setState(() {
                          aNo = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // if (counter > 0) backButton(),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientButtonFb1Next(
                        onPressed: () {
                          setState(() {
                            updatePage();
                          });
                        },
                        text: 'Next',
                        icona: Icon(Icons.skip_next_outlined),
                      )
                    ],
                  ),
                )
              ],
            ),
            if (counter >= 9)
              GradientButtonFb1(
                onPressed: () {
                  getResult();
                },
                text: "Get Result",
              ),
          ],
        ),
      ),
    );
  }

  Widget qTXT(txt) {
    return Container(
        alignment: Alignment.center,
        width: 350,
        height: 70,
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Text(
              txt,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  letterSpacing: 0.0,
                  wordSpacing: 2.0),
            ),
          ],
        ));
  }

  void updatePage() {
    counter++;
    if (counter <= 9) {
      dataListLea!.add(QuestionModel(counter + 1, convert()));
      q = (counter + 1).toString();
      theQ = questionsListT1Lea[counter].question;
      ans1 = questionsListT1Lea[counter].answer1;
      ans2 = questionsListT1Lea[counter].answer2;
      ans3 = questionsListT1Lea[counter].answer3;
      ans4 = questionsListT1Lea[counter].answer4;
      ans5 = questionsListT1Lea[counter].answer5;
    }
  }

  int convert() {
    late int ansNo;
    if (aNo == ANo.a1) {
      ansNo = 1;
    } else if (aNo == ANo.a2) {
      ansNo = 2;
    } else if (aNo == ANo.a3) {
      ansNo = 3;
    } else if (aNo == ANo.a4) {
      ansNo = 4;
    } else if (aNo == ANo.a5) {
      ansNo = 5;
    }
    return ansNo;
  }

  void getResult() {
    dataListLea!.add(QuestionModel(counter + 1, convert()));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LeadersResultPage()),
    );
  }

  // Widget backButton() {
  //   late Widget b;
  //   if (counter > 0 && counter<=9) {
  //     b = Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         RaisedButton(
  //             onPressed: () {
  //               setState(() {
  //                 counter - 1;
  //                 q = (counter - 1).toString();
  //                 theQ = questionsListT1[counter].question;
  //                 ans1 = questionsListT1[counter].answer1;
  //                 ans2 = questionsListT1[counter].answer2;
  //                 ans3 = questionsListT1[counter].answer3;
  //                 ans4 = questionsListT1[counter].answer4;
  //                 ans5 = questionsListT1[counter].answer5;
  //               });
  //             },
  //             child: Icon(Icons.skip_next_outlined))
  //       ],
  //     );
  //   }
  //   return b;
  // }
}

class ListLeaClass {
  List<QuestionModel>? listDataFLea() {
    return dataListLea;
  }
}
