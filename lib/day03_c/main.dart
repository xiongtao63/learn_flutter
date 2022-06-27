
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
      children: const [
        ListTile(
          leading: Icon(Icons.settings,size: 40, color: Colors.yellow,),
          title: Text("ddddddd"),
          subtitle: Text("dddddddddddddddddddddddddd"),
          trailing: Icon(Icons.settings,size: 40, color: Colors.blue,),
        ),
        ListTile(
          title: Text("ddddddd"),
          subtitle: Text("dddddddddddddddddddddddddd"),
        ),
        ListTile(
          title: Text("ddddddd"),
          subtitle: Text("dddddddddddddddddddddddddd"),
        ),
        ListTile(
          title: Text("ddddddd"),
          subtitle: Text("dddddddddddddddddddddddddd"),
        ),
      ],
    );
  }
}
