import 'dart:ffi';

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
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
          (answer) => Answer(() => answerHandler(answer['score'] as Int),
              answer['text'] as String)),
      Text('Question ${questionIndex + 1} / ${questions.length}')
    ]);
  }
}
