import 'dart:ffi';

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final int questionIndex;
  final Function answerHandler;
  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.answerHandler}) {}

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['question'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map(
          (answer) => Answer(() => answerHandler(answer['score'] as int),
              answer['text'] as String)),
      Text('Question ${questionIndex + 1} / ${questions.length}'),
      TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 4, 27, 175)),
          onPressed: () {},
          child: Text('Text button')),
      OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.purple,
            shape: StadiumBorder(),
            // RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            side: BorderSide(
                color: Colors.deepOrange,
                width: 1,
                strokeAlign: StrokeAlign.center)),
        onPressed: () {},
        child: Text('Outlined button'),
      )
    ]);
  }
}
