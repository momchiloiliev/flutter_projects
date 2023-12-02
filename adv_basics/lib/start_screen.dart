import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  Widget build(BuildContext context) {
    void click() {
      var test = 0;
    }

    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Center(
          child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                Opacity(opacity: 0.6,
                   child: Image.asset(
                    'assets/images/quiz-logo.png',
                    width: 250,
                  ),
                ),
                SizedBox(height: 35),
                const Text(
                    'Learn Flutter the fun way!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                SizedBox(height: 40,),
                OutlinedButton.icon(
                  onPressed: startQuiz,
                  icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
                  label: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
          ),
      ),
    );
  }
}
