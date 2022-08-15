// import tab, fm tab.
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// stl tab.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0,
        // leading: 간단한 위젯이나 아이콘 등을 appbar title 왼쪽에 위치 시키는 것.
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        // actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            // 함수의 형태, 일반 버튼이나 아이콘 버튼을 터치했을 때
            // 일어나는 이벤트를 정의 하는 곳
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
    );
  }
}
