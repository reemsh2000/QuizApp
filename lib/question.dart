import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        questionText,
        style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 54, 49, 49)),
      ),
    );
  }
}
