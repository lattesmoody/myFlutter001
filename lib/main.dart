import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(builder: (context){
      return Center(
        child:TextButton(
          child: Text(
            'Show me',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.red,
          onPressed: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('Hello'),
            ));
          },
        ),
      },
    );
  }
}

// Scaffold.of(context) method
/*
  "현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라."

*/