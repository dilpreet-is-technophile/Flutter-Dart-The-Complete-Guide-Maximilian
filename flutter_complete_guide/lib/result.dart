import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;
  Result(this.finalScore, this.resetQuiz);

  String get resultPhrase {
    if (finalScore == 90) {
      return "GOD LEVEL CODER";
    } else if (finalScore > 85) {
      return "Wohoooo Perfect coder";
    } else if (finalScore > 75) {
      return "You can call yourself coder, score is $finalScore";
    } else if (finalScore > 65) {
      return "hmmm maybe you are coding just for money, score is $finalScore";
    } else if (finalScore > 55) {
      return "Well coding is not everything, score is $finalScore";
    }
    return "To be honest leave coding, your score is $finalScore";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {
              resetQuiz();
            },
            child: Text("Reset Quiz"),
          ),
          Text(
              "Score List:\n Perfect 90 = GOD LEVEL CODER \n Above 85 = Wohoooo Perfect Coder \n Above 75 = You can call yourself coder\n Above 65 = hmmm maybe you are coding just for money \n Above 55 = Well coding is not everything\n Below 55 = To be honest leave coding")
        ],
      ),
    );
  }
}
