import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionInd = 0;
  var questionsArr = ["What is your fav color?", "What is your fav animal?"];

  void answerQuestion(int num) {
    if (questionInd == questionsArr.length - 1) {
      return;
    }
    print("Answer Chosen $num");
    setState(() {
      questionInd++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: [
            Question(questionsArr[questionInd]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
