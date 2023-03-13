import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var finalScore = 0;
  var questionInd = 0;

  var questions = [
    {
      "questionText": "1. What\'s your favourite technology?",
      "answerOptions": [
        {"text": "Web development", "score": 5},
        {"text": "App Development", "score": 6},
        {"text": "Game Development", "score": 6},
        {"text": "Machine Learning", "score": 9},
        {"text": "Robotics", "score": 10},
        {"text": "AR/VR", "score": 8},
      ],
    },
    {
      "questionText":
          "2. Who among the following is your tech industry inspiration?",
      "answerOptions": [
        {"text": "Edward Snowden", "score": 10},
        {"text": "Steve Jobs", "score": 10},
        {"text": "Elon Musk", "score": 6},
        {"text": "Peter Sunde", "score": 8},
        {"text": "Guido van Rossum", "score": 7},
        {"text": "Bill Gates", "score": 7},
      ],
    },
    {
      "questionText":
          "3. Do you think code is a study of Art along with Engineering?",
      "answerOptions": [
        {"text": "Yes", "score": 10},
        {"text": "No", "score": 0},
        {"text": "Debatable", "score": 5},
      ],
    },
    {
      "questionText": "4. When did you start to code",
      "answerOptions": [
        {"text": "In College first year", "score": 6},
        {"text": "In High school", "score": 8},
        {"text": "Before Class 10th", "score": 9},
        {"text": "After College first year", "score": 4},
        {"text": "Born Coder", "score": 10},
      ],
    },
    {
      "questionText": "5. Do you love coding or it's just for Job",
      "answerOptions": [
        {"text": "I am doing for Job", "score": 5},
        {"text": "Makes me happy to code, job or not", "score": 10},
        {"text": "I like it and it also pays", "score": 7},
        {"text": "I hate coding", "score": 0},
      ],
    },
    {
      "questionText": "6. What\s your favourite language",
      "answerOptions": [
        {"text": "Java", "score": 8},
        {"text": "Python", "score": 7},
        {"text": "JavaScript", "score": 6},
        {"text": "C/C++", "score": 10},
      ],
    },
    {
      "questionText": "7. Which company inspires you the most",
      "answerOptions": [
        {"text": "Google", "score": 10},
        {"text": "Microsoft", "score": 8},
        {"text": "Samsung", "score": 8},
        {"text": "Netflix", "score": 7},
        {"text": "PlaySimple", "score": 6},
        {"text": "Apple", "score": 10},
      ],
    },
    {
      "questionText": "8. Which innovation is your favourite",
      "answerOptions": [
        {"text": "Internet", "score": 10},
        {"text": "Social media", "score": 9},
        {"text": "Personal Computing", "score": 9},
        {"text": "Phones", "score": 8},
        {"text": "Bitcoin", "score": 7},
      ],
    },
    {
      "questionText": "9. Favourite Operating System",
      "answerOptions": [
        {"text": "Linux", "score": 10},
        {"text": "MacOs", "score": 9},
        {"text": "Windows 11", "score": 8},
        {"text": "Windows 8", "score": 0},
        {"text": "Windows xp", "score": 10},
        {"text": "Windows 7", "score": 8},
      ],
    },
  ];

  void answerQuestion(int score) {
    print("Answer Chosen $num");
    setState(() {
      finalScore = finalScore + score;
      questionInd++;
    });
  }

  void resetQuiz() {
    setState(() {
      finalScore = 0;
      questionInd = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: questionInd < questions.length
            ? Quiz(answerQuestion, questions, questionInd)
            : Result(finalScore, resetQuiz),
      ),
    );
  }
}
