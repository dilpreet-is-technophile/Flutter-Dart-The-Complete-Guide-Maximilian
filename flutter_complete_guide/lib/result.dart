import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  Result(this.finalScore);

  String get resultPhrase {
    if (finalScore == 80) {
      return "Wohoooo Perfect 80";
    } else if (finalScore < 80 && finalScore > 60) {
      return "You can call yourself coder, score is $finalScore";
    } else if (finalScore < 60 && finalScore > 50) {
      return "hmmm maybe you are coding just for money, score is $finalScore";
    } else if (finalScore < 50 && finalScore > 40) {
      return "Well coding is not everything, score is $finalScore";
    }
    return "To be honest leave coding, your score is $finalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
