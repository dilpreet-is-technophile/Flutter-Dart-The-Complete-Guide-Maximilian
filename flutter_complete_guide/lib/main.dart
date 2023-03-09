import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionInd = 0;
  var questionsArr = ["question one?", "question two?"];

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
            ElevatedButton(
              onPressed: () {
                answerQuestion(1);
              },
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion(2);
              },
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion(3);
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
