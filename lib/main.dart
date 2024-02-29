import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello susum new"),
      ),
      body: const Center(
        child: Text('Some text in center.'),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     theme:
//         ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text("App Bar Title "),
//       ),
//       body: const Center(
//         child: Text('This is some Text'),
//       ),
//     ),
//   ));
// }
