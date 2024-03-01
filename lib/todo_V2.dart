import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // initial variable
  List<String> _todos = ['task1', 'task2', 'task3'];

  // Dialog box pop up

  void _addTodo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String newTodo = '';

          return AlertDialog(
            title: Text('Enter your task below'),
            content: TextField(
              onChanged: (value) {
                newTodo = value;
              },
            ),
            actions: <Widget>[
              TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _todos.add(newTodo);
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Add'))
            ],
          );
        });
  }

  // add input to the todo list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos Version 1'),
      ),
      body: ListView.builder(
          itemCount: _todos.length,
          itemBuilder: (context, index) {
            final todo = _todos[index];
            return ListTile(
              title: Text(
                todo,
                style: TextStyle(
                    decoration: todo.startsWith('-')
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              onTap: () {
                setState(() {
                  if (todo.startsWith('-')) {
                    _todos[index] = todo.substring(2);
                  } else {
                    _todos[index] = '- $todo';
                  }
                });
              },
              onLongPress: () {
                setState(() {
                  _todos.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child: Icon(Icons.add),
      ),
    );
  }
  // create list view builder to show the list tiles
}
