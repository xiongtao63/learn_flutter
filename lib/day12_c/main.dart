import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tabs.dart';


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
      home:Tabs(),

    );
  }
}







