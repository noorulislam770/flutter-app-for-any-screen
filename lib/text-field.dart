import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar $_inputText'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration:
                const InputDecoration(hintText: "Enter some text here!"),
            onChanged: (value) {
              setState(() {
                _inputText = value;
              });
            },
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  _inputText = '';
                });
              },
              child: const Text("Clear All"))
        ],
      )),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text('You Typed : $_inputText'),
      ),
    );
  }
}
