import 'package:flutter/material.dart';

import './quiz.dart';
import './rezult.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'question': 'Wat\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'yellow', 'score': 1}
      ]
    },
    {
      'question': 'Wat\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 1},
        {'text': 'dog', 'score': 2},
        {'text': 'horse', 'score': 3},
        {'text': 'spider', 'score': 10}
      ]
    },
    {
      'question': 'Wat\'s your favorite band?',
      'answers': [
        {'text': 'Mettalica', 'score': 3},
        {'text': 'Back street boys', 'score': 10},
        {'text': 'RHCP', 'score': 4},
        {'text': 'SOD', 'score': 5}
      ]
    }
  ];

  var _questionIndex = 0;
  int _score = 0;
  void _answerHandler(score) {
    setState(() {
      _score = _score + score as int;
      _questionIndex += 1;
    });
  }

  void _restart() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.quiz_sharp),
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerHandler: _answerHandler)
            : Rezult(restart: _restart, score: _score),
      ),
    );
  }
}
