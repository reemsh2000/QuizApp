import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import 'package:quiz/question.dart';
import 'package:quiz/result.dart';

class Quiz extends StatefulWidget {
  final String name;

  const Quiz(this.name);

  @override
  State<Quiz> createState() => new _QuizState();
}

class _QuizState extends State<Quiz> {
 

  @override
  int _questionIndex = 0;
  num score = 0;

  List<Map<String, Object>> answers = [
    {'text': 'Excellent', 'score': 10},
    {'text': 'Very good', 'score': 8},
    {'text': 'Good', 'score': 7},
    {'text': 'Satisfied', 'score': 6}
  ];
  List<String> questions = [
    'What\'s your grading mark in mobile computing course?',
    'What\'s your grading mark in Data Science course?',
    'What\'s your grading mark in Image processing course?',
    'What\'s your grading mark in Data structure course?',
  ];

  void _answerQuestion(questionScore, context) {
    if (_questionIndex == 0) score = 0;
    setState(() {
      score = score + questionScore;
      if (_questionIndex < questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Result(
                      score,
                      widget.name
                    )));
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              ...(answers)
                  .map((answer) => Answer(
                      _answerQuestion,
                      answer['text'].toString(),
                      int.parse(answer['score'].toString())))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
