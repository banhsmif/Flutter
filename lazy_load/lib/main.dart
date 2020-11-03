import 'package:flutter/material.dart';
import 'package:lazy_load/proxy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lazy Loading',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> items = [
    'Tom',
    'Jerry',
    'Lyly',
    'Jack',
    'Jane',
    'Tim',
    'Hana'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lazy Loading'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView(
          children:
            items
            .asMap()
            .map((key, value) => MapEntry(
              key,
              Container(
                  child: Proxy(value),
              )))
              .values.toList(),
        ),
      ),
    );
  }
}
