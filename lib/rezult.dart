import 'package:flutter/material.dart';

class Rezult extends StatelessWidget {
  final VoidCallback restart;
  int score;
  Rezult({required this.restart, required this.score}) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text('You finished!, Your score is ${score}'),
        FloatingActionButton(
          child: Icon(Icons.restart_alt),
          onPressed: restart,
        )
      ]),
    );
  }
}
