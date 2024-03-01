import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

List<Todo> todoList = [
  Todo('buy milk', 'never buy expired mil'),
  Todo('go cycling', 'go uphill and not far'),
  Todo('walk the horse', 'dont forget to feed it after a walk')
];

void main() => runApp(MaterialApp(
      title: 'todos',
      home: TodosScreen(todos: todoList),
    ));

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key, required this.todos}) : super(key: key);
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Center(
          child: Text(todo.description),
        ),
      ),
    );
  }
}
