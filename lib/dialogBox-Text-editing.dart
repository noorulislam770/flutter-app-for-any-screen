import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dialogue Demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  String _inputText = '';

  void _showInputDiaglog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController controller = TextEditingController();
          return AlertDialog(
            title: const Text("Enter Some Text"),
            content: TextField(
              controller: controller,
              decoration:
                  const InputDecoration(hintText: "enter some text here."),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _inputText = controller.text;
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text("Save")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar "),
      ),
      body: Center(
          child: _inputText.isEmpty
              ? const Text('Tap the icon to enter some text')
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("You Entered: $_inputText"),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _inputText = '';
                          });
                        },
                        child: const Text("Clear"))
                  ],
                )),
      floatingActionButton: FloatingActionButton(
        onPressed: _showInputDiaglog,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
