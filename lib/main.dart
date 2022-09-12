import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'Wat\'s your favorite color?',
    'Wat\'s your favorite animal?',
    'Wat\'s your favorite band?'
  ];
  var questionIndex = 0;
  void _onPress() {
    setState(() {
      if (questions.length - 1 > questionIndex) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
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
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: _onPress, child: Text('button')),
            ElevatedButton(onPressed: _onPress, child: Text('Button')),
            ElevatedButton(onPressed: _onPress, child: Text('Button')),
            ElevatedButton(
                onPressed: _onPress,
                onLongPress: () => print('LongPress'),
                child: Text('Button'))
          ])),
    );
  }
}
