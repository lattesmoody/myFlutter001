import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BESTCHOCO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('BESTCHOCO'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('BESTCHOCO',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold))
              ],
            )));
  }
}
