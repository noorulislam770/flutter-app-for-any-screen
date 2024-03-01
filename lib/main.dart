import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App with drawer'),
      ),
      body: Center(child: Text("Home Screen")),
      drawer: Drawer(
        shadowColor: Colors.amber,
        child: ListView(
          children: [
            const SizedBox(
              height: 60.0,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Screens'),
              ),
            ),
            ListTile(
              title: const Text('first screen'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemOnePage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('second screen'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemTwoPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ItemOnePage extends StatelessWidget {
  const ItemOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: const Center(
        child: Text('Second screen'),
      ),
    );
  }
}

class ItemTwoPage extends StatelessWidget {
  const ItemTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: const Center(
        child: Text('Second screen'),
      ),
    );
  }
}
