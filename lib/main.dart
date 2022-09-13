import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

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
      'answers': ['red', 'blue', 'green', 'yellow']
    },
    {
      'question': 'Wat\'s your favorite animal?',
      'answers': ['cat', 'dog', 'horse', 'spider']
    },
    {
      'question': 'Wat\'s your favorite band?',
      'answers': ['Mettalica', 'Back street boys', 'RHCP', 'SOD']
    }
  ];

  var _questionIndex = 0;
  void _onPress() {
    setState(() {
      if (_questions.length - 1 > _questionIndex) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: [
          Question(_questions[_questionIndex]['question']),
          ...(_questions[_questionIndex]['answers'] as List)
              .map((text) => Answer(_onPress, text))
              .toList()
        ]),
      ),
    );
  }
}
