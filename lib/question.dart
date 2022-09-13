import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
        textAlign: TextAlign.center,
      ),
    );
  }
}
