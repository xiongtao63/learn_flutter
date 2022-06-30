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

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {
          setState(() {
            this.list.add('新增数据1');
            this.list.add('新增数据2');
          });
        }, child: Text("添加"))
      ],
    );
  }
}
