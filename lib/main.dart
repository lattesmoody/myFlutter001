/*
  22강 Navigator
  1. Route 개념
  2. Navigator의 정의 - 모든 앱 페이지들 관리. Route 객체 관리 / push, pop 함수 / stack 자료구조
  3. MaterialPageRoute위젯과 context
  4. 페이지 이동 기능 구현 완성
*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      //theme: ThemeData(primaryColor: Colors.blue),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Go to the Second page'),
        onPressed: () {},
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Go to the First page'),
        onPressed: () {
          Navigator.push(context,route)
          // 09:13
        },
      )),
    );
  }
}
