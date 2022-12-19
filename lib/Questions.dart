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
      "Totally Disagree", "Disagree", "Neutral", "Sometimes", "Totally Agree"),
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
      "Achieving targets", "Exceptional performance"),
  AnswersT1T2("Very Low quality", "Low quality", "Acceptable", "High Quality",
      "A role model"),
  AnswersT1T2(
      "Unable to handle critical tasks",
      "Can do it, but requires supervision",
      "Can handle some of the critical tasks",
      "The employee is capable of handling critical tasks",
      "The employee is highly capable of handling critical \ntasks and can guide other employees as well"),
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

List<TheQuestionsT1> questionsListT1 = [
  TheQuestionsT1(
      "The employee shows interest to learn new things \nto expand his/her knowledge. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "The employee is able to do more complex jobs. \nHe/She has the capability to do more. \nDo you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "The employee has good connections within the \norganization. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "The employee always brings creative ideas and \nsuggestions to the workplace. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "Does the employee show interest in moving to \na higher position in his/her career?",
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
      "The employee always achieves his/her tasks \nwithin the timeline. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "How do you rate the work quality of the employee?",
      answersListT1T2[2].answer1,
      answersListT1T2[2].answer2,
      answersListT1T2[2].answer3,
      answersListT1T2[2].answer4,
      answersListT1T2[2].answer5),
  TheQuestionsT1(
      "The employee assists his/her team in completing the \nrequired tasks and activities. Do you agree with that?",
      answersList[0].answer1,
      answersList[0].answer2,
      answersList[0].answer3,
      answersList[0].answer4,
      answersList[0].answer5),
  TheQuestionsT1(
      "How well is the employee handling critical tasks?",
      answersListT1T2[3].answer1,
      answersListT1T2[3].answer2,
      answersListT1T2[3].answer3,
      answersListT1T2[3].answer4,
      answersListT1T2[3].answer5),
];
