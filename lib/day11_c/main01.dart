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
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200),
        Text("${count}"),
        SizedBox(height: 20),
        ElevatedButton(onPressed: (){
          count++;
        }, child: Text("按钮"))
      ],
    );
  }
}


