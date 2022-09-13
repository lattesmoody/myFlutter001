import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.grey,
          width: 100,
          height: 100,
          //margin: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          padding: EdgeInsets.all(40), // 숫자가 높아지면 텍스트의 공간이 줄어들어 텍스트가 가려짐.
          child: Text('Hello'),
        ),
      ),
    );
  }
}

// container는 오직 한 child만 가진다. (플러터는 멀티, 싱글 구분함.)

