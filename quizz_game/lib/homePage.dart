import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quizz Game"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 116, 70, 243),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: const Color.fromARGB(255, 70, 40, 153),
        child: Column(
          children: [
            Image.asset(
              "assets/images/brain.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "Lets Start with the quiz!",
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 116, 70, 243),
                foregroundColor: Colors.white,
              ),
              child: const Text("Start"),
            ),
          ],
        ),
      ),
    );
  }
}
