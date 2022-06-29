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

 List<Widget> _getData(){
   var tempList = listData.map((value){
     return ListTile(
       title: Text(value['title']),
       subtitle: Text(value['author']),
       leading: Image.network(value["imageUrl"]),
     );
   }).toList();
   // ('124124','124214')  必须toList
   return tempList;
 }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}
