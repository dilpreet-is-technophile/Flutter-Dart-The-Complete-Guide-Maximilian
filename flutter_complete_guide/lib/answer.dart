import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
  final Function(int) callback;
  final String answerText;
  final int score;
  Answer(this.callback, this.answerText, this.score);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          callback(score);
        },
        child: Text(answerText),
      ),
    );
  }
}
