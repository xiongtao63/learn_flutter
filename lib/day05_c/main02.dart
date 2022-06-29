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

 List<Widget> _getData(){
   List<Widget> list = [];
   for(var i = 0;i<10;i++){
     list.add(ListTile(
       title: Text("dddd${i}"),
     ));
   }
   return list;
 }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}
