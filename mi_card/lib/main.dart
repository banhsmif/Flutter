import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/main.jpg'),
            ),
            Text(
              'Lauren',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
                'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey.shade500,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 150.0,
              child: Divider(
                color: Colors.grey[900],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.call,
                color: Colors.grey.shade700,),
                title: Text(
                  '+84 xxx xxx xx',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
              leading: Icon(Icons.mail,
              color: Colors.grey.shade700,),
                title: Text(
                  'mail@mail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                    color: Colors.grey.shade700,
                    letterSpacing: 1.2,
                  ),
                ),
            ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

