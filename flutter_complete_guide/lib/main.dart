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
  var questions = [
    {
      "questionText": "What\'s your favourite technology?",
      "answerOptions": [
        "Web development",
        "App Development",
        "Game Development",
        "Machine Learning",
        "Stack Overflow"
      ],
    },
    {
      "questionText":
          "Who among the following is your tech industry inspiration?",
      "answerOptions": [
        "Steve Jobs",
        "Bill gates",
        "Elon Musk",
        "Edward Snowden",
        "Gottfrid Svartholm"
      ],
    },
    {
      "questionText": "Do you think code can be an art?",
      "answerOptions": [
        "Yes",
        "Hell Yes",
        "By all means",
        "No second thoughts",
        "Indeed"
      ],
    }
  ];

  void answerQuestion(int num) {
    if (questionInd == questions.length - 1) {
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
            Question(questions[questionInd]["questionText"]),
            ...(questions[questionInd]["answerOptions"] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
            // Answer(answerQuestion),
            // Answer(answerQuestion),
            // Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
