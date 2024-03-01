import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyWidget(),
    ));
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: MyWidget(),
//     ),
//   ));
// }

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(color: Colors.red),
      );
}
