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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
       direction: Axis.vertical,
       //  alignment: WrapAlignment.center,
       //  runAlignment: WrapAlignment.spaceAround,
        children: [
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11sdfsfs"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
          MyButton("text11"),
        ],
      ),
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


