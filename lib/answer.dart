import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  Answer(this.onPress, this.text) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: newMethod,
        child: Text(text),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }

  get newMethod => onPress;
}
