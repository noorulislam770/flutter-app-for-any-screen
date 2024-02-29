import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: UserButton(),
      ),
    ),
  ));
}

class UserButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {print("you have tapped the screen.")},
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0), color: Colors.red[600]),
        child: const Center(
          child: Text('Click Here'),
        ),
      ),
    );
  }
}
