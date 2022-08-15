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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/reckingball.jpg'),
              ),
              accountEmail: Text('BESTCHOCO'),
              accountName: Text('bestchoco@kakao.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
