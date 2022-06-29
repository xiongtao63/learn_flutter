import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../day05/res/listData.dart';


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

  Widget _getListData(context, index) {
    return ListTile(
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
      leading: Image.network(listData[index]["imageUrl"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: _getListData);
  }
}
