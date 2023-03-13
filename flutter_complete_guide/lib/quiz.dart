import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final questionInd;
  final Function(int) callback;
  Quiz(this.callback, this.questions, this.questionInd);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionInd]["questionText"]),
        ...(questions[questionInd]["answerOptions"]
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              callback, answer["text"] as String, answer["score"] as int);
        }).toList()
      ],
    );
  }
}
