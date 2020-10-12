import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: SafeArea(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Phone number'),

                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.mail,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
