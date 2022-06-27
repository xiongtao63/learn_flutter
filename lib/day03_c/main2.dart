
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "我是一个标题",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("scaffold标题"),
        ),
        body: MyHome(),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Image.network("https://www.itying.com/images/flutter/1.png",),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            "我是标题",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          ),
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
        ),
      ],
    );
  }
}
