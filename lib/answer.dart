import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  final int score;
  const Answer(this.selectHandler, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
          width: 250,
          height: 45,
          child: ElevatedButton(
            child: Text(
              answerText,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: (() => selectHandler(score, context)),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 221, 207, 150),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
          )),
    );
  }
}
