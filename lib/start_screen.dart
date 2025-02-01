import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity:0.5,
          //   child: Image.asset('assets/images/quiz-logo.png',
          //       width: 300,          
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width:300,
          color: const Color.fromARGB(200, 183, 172, 172),
          ),
          const SizedBox(height: 80),
         Text('Learn the flutter',
          style: GoogleFonts.lato(
           color:  Color.fromARGB(255, 185, 174, 231),
           fontSize: 24
          ) ,
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
          onPressed: startQuiz,
           style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
           ),
           icon:const Icon(Icons.arrow_right_alt),
           label: const Text('Start Quiz!')),

        ],
      ),
      );
  }
}