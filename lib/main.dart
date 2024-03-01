import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = [
      'item1',
      'item2',
      'item3',
      'item4',
      'item5',
      'item6',
    ];
    return MaterialApp(
      title: "List View Builder",
      home: Scaffold(
        appBar: AppBar(title: Text("List View Builder")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: Text(item),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("you just clicked this item: $item");
              },
            );
          },
        ),
      ),
    );
  }
}
