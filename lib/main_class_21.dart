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
      /*
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
                child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: const Text('ElevatedButton Button'),
        ))));
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
      */

      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch, // width 값 의미 없음.
          //verticalDirection: VerticalDirection.up,
          //verticalDirection: VerticalDirection.down,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.end, // 가로축 끝점 기준으로 정렬.

          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
            // Container(
            //   width: double.infinity,
            // )
          ],
        ),
      ),
    );
  }
}

// container는 오직 한 child만 가진다. (플러터는 멀티, 싱글 구분함.)

// 아래 사이트는 레이아웃 학습
// https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e