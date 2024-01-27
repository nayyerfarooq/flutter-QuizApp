import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png', // Path to your image
            width: 300, // Set the width as needed
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          //   ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/quiz-logo.png', // Path to your image
          //     width: 200, // Set the width as needed
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun away!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 222, 180, 230), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
