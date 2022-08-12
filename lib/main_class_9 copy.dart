import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character card',
      home: MyCard(), // 앱 실행 시 제일 먼저 보여지는 경로.
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BESTCHOCO'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0, // title바를 플랫하게 적용.
        ),
        body: Center(
          child: Column(
            // Axis: 가로 축, 세로 축 => 세로 축 기준으로 상단,중간,하단으로 정렬할 때 쓰인다.
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hello'),
              Text('hello'),
              Text('hello'),
            ],
          ),
        ));
  }
}
