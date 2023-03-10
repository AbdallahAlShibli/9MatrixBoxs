import 'package:flutter/material.dart';

class Questions {
  late int qNo;
  late int anNo;
  late int userType;
  Questions(this.qNo, this.anNo, this.userType);
}

class AnswersT1T1 {
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  late String answer5;
  AnswersT1T1(
      this.answer1, this.answer2, this.answer3, this.answer4, this.answer5);
}

List<AnswersT1T1> answersList = [
  AnswersT1T1(
      "Totally Disagree", "Disagree", "Sometimes", "Agree", "Totally Agree"),
];

class AnswersT1T1l1 {
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  late String answer5;
  AnswersT1T1l1(
      this.answer1, this.answer2, this.answer3, this.answer4, this.answer5);
}

List<AnswersT1T1l1> answersListL1 = [
  AnswersT1T1l1(
      "Totally Disagree", "Disagree", "Neutral", "Agree", "Totally Agree"),
];


class AnswersT1T1Q8 {
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  late String answer5;
  AnswersT1T1Q8(
      this.answer1, this.answer2, this.answer3, this.answer4, this.answer5);
}

List<AnswersT1T1Q8> answersListQ8 = [
  AnswersT1T1Q8(
      "Very Low quality", "Low quality", "Acceptable", "High Quality", "A role model"),
];

class AnswersT1T2 {
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  late String answer5;
  AnswersT1T2(
      this.answer1, this.answer2, this.answer3, this.answer4, this.answer5);
}

List<AnswersT1T2> answersListT1T2 = [
  AnswersT1T2(
      "No, the employee has no interest to move up",
      "It is not clear whether the employee wants \nto move up or not",
      "Sometimes",
      "The employee shows interest, but he/she \nrequires the development",
      "Yes, the employee shows that a lot, and \nhe/she can move up"),
  AnswersT1T2("Very Low performance", "Low performance", "Achieving targets",
      "High performace", "Exceptional performance"),
  AnswersT1T2("Extremely negative feedback", "Somehow negative feedback", "Neutral feedback", "Positive feedback",
      "Extremely positive feedback"),
  AnswersT1T2(
      "Unable to handle critical tasks",
      "Can do it, but requires supervision",
      "Can handle some of the critical tasks",
      "The employee is capable of \nhandling critical tasks",
      "The employee is highly capable of \n handling critical tasks \n and can guide other employees as well"),
];

class TheQuestionsT1 {
  late String question;
  late String answer1;
  late String answer2;
  late String answer3;
  late String answer4;
  late String answer5;

  TheQuestionsT1(this.question, this.answer1, this.answer2, this.answer3,
      this.answer4, this.answer5);
}

List<TheQuestionsT1> questionsListT1Lea = [
  TheQuestionsT1(
      "The employee shows interest to learn new things \nto expand his/her knowledge. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "The employee is able to lead a larger group of \nemployees. Do you agree with that?",
      answersListL1[0].answer1,
      answersListL1[0].answer2,
      answersListL1[0].answer3,
      answersListL1[0].answer4,
      answersListL1[0].answer5),
  TheQuestionsT1(
      "The employee has good connections within \nthe organization. Do you agree with that?",
      answersListL1[0].answer1,
      answersListL1[0].answer2,
      answersListL1[0].answer3,
      answersListL1[0].answer4,
      answersListL1[0].answer5),
  TheQuestionsT1(
      "The employee is considered a role model for \nother leaders. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "Does the employee show interest in moving \nup to the next leadership role?",
      answersListT1T2[0].answer1,
      answersListT1T2[0].answer2,
      answersListT1T2[0].answer3,
      answersListT1T2[0].answer4,
      answersListT1T2[0].answer5),
  TheQuestionsT1(
      "How do you rate the overall performance of the employee?",
      answersListT1T2[1].answer1,
      answersListT1T2[1].answer2,
      answersListT1T2[1].answer3,
      answersListT1T2[1].answer4,
      answersListT1T2[1].answer5),
  TheQuestionsT1(
      "The employee always achieves his/her tasks within the \ntimeline. Do you agree with that?",
      answersListL1[0].answer1,
      answersListL1[0].answer2,
      answersListL1[0].answer3,
      answersListL1[0].answer4,
      answersListL1[0].answer5),
  TheQuestionsT1(
      "How do you rate the work quality of the employee?",
      answersListQ8[0].answer1,
      answersListQ8[0].answer2,
      answersListQ8[0].answer3,
      answersListQ8[0].answer4,
      answersListQ8[0].answer5),
  TheQuestionsT1(
      "How do you see the feedback (from customers or peers or \nother stakeholders) about the employee?",
      answersListT1T2[2].answer1,
      answersListT1T2[2].answer2,
      answersListT1T2[2].answer3,
      answersListT1T2[2].answer4,
      answersListT1T2[2].answer5),
  TheQuestionsT1(
      "How well is the employee handling critical tasks?",
      answersListT1T2[3].answer1,
      answersListT1T2[3].answer2,
      answersListT1T2[3].answer3,
      answersListT1T2[3].answer4,
      answersListT1T2[3].answer5),
];
