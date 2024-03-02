import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'example',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  // Dispose the controller
  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('App example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: firstController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: secondController,
              decoration: InputDecoration(labelText: 'email'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.text_fields),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Text("first value : ${firstController.text}"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("second value : ${secondController.text}"),
                    ],
                  ),
                );
              });
        },
        tooltip: 'show the values',
      ),
    );
  }
}
