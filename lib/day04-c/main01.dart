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
    return Center(
      child: Container(
        height: 300,
        width: 300,
        child: Image.network(
          "http://www.ionic.wang/statics/index/images/ionic4.png",
          // alignment: Alignment.topLeft,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,
          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      ),
    );
  }
}
