import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example List View App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView(
          children: [
            ListTile(
              // leading: Icon(Icons.person),
              title: Text('Noor'),
              // subtitle: Text('Noor@one.com'),
              // trailing: Icon(Icons.arrow_forward),
              // onTap: () => print('Noor"s tile was clicked'),
            ),
            ListTile(
              // leading: Icon(Icons.person),
              title: Text('Mohsin'),
              // subtitle: Text('mohsin@one.com'),
              // trailing: Icon(Icons.arrow_forward),
              // onTap: () => print('moses"s tile was clicked'),
            ),
            ListTile(
              // leading: Icon(Icons.person),
              title: Text('Adiba'),
              // subtitle: Text('adiba@one.com'),
              // trailing: Icon(Icons.arrow_forward),
              // onTap: () => print('adi"s tile was clicked'),
            ),
            ListTile(
              // leading: Icon(Icons.person),
              title: Text('Farah'),
              // subtitle: Text('farah@one.com'),
              // trailing: Icon(Icons.arrow_forward),
              // onTap: () => print('farahs tile was clicked'),
            ),
            ListTile(
              // leading: Icon(Icons.person),
              title: Text('Shahdab'),
              // subtitle: Text('shahdab@one.com'),
              // trailing: Icon(Icons.arrow_forward),
              // onTap: () => print('shadabs tile was clicked'),
            ),
          ],
        ),
      ),
    );
  }
}
