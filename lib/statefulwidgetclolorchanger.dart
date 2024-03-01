import 'package:flutter/material.dart';

const username = 'noor';
void main() {
  // run does push a widget to a screem.
  // center --> takes a child widget and center it in the center
  runApp(const Center(
      child: Text(
    'hello $username',
    textDirection: TextDirection.ltr,
    style: TextStyle(
      color: Colors.amber,
      fontSize: 50,
    ),
  )));
}
