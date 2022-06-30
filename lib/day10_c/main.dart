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
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      spacing: 5,
      runSpacing: 3,
      children: [
        MyButton("text"),
        MyButton("tesdfdsfst1"),
        MyButton("texsdfsfsdsdfsfsdt2"),
        MyButton("text3"),
        MyButton("text4"),
        MyButton("dfdsfsdf"),
        MyButton("s"),
        MyButton("dffffffffffffff"),
        MyButton("text8"),
      ],
    );
  }
}
class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: (){

      },
    );
  }
}


