import 'package:flutter/material.dart';
import 'package:quizz_game/homePage.dart';
import 'package:quizz_game/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.switchScreen});

  final List<String> chosenAnswers;
  final void Function() switchScreen;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'questions': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have answered X out of Y questions correctly"),
            const SizedBox(height: 30),
            const Text("list of answers and questions..."),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  HomePage(switchScreen);
                },
                child: const Text("Restart quiz"))
          ],
        ),
      ),
    );
  }
}
