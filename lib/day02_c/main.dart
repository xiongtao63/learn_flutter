
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
          title: Text("scaffold标题111"),
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
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        // padding: EdgeInsets.all(20),
        // padding: EdgeInsets.fromLTRB(10, 20, 55, 0),
        margin: EdgeInsets.all(20),
        // transform: Matrix4.translationValues(100,10,0.2),
        transform: Matrix4.rotationZ(0),
        alignment: Alignment.bottomRight,
        child: Text(
            "各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大地",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2
          ),
        ),
      ),
    );
  }
}
