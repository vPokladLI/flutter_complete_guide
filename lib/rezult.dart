import 'package:flutter/material.dart';

class Rezult extends StatelessWidget {
  final VoidCallback restart;
  int score;
  Rezult({required this.restart, required this.score}) {}

  String get resultPhrazse {
    var phraze = 'You are strange!';
    if (score <= 5) {
      phraze = 'You are aesome!';
    } else if (score <= 15) {
      phraze = 'Pretty likeable!';
    }
    return phraze;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '${resultPhrazse} Your score is ${score}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: FloatingActionButton(
            tooltip: 'Restart',
            child: Icon(Icons.restart_alt),
            onPressed: restart,
          ),
        )
      ]),
    );
  }
}
