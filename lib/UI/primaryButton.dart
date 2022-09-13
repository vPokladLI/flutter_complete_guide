import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final onPress;
  final String text;
  PrimaryButton(this.onPress, this.text) {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(text),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),
    );
  }
}
