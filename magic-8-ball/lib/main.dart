import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;
  void changeImg(){
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          changeImg();
        },
        child: Image.asset('images/ball$ballNumber.png'),),
    );
  }
}
