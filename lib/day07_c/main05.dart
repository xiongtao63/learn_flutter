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
      height: 800.0,
      width: 400.0,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: IconContainer(Icons.settings,color: Colors.red,size: 32,),
          ),
          SizedBox(width: 10,),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.settings,color: Colors.red,size: 32,),
          ),
          SizedBox(width: 10,),
          Expanded(
            flex: 1,
            child: IconContainer(Icons.settings,color: Colors.red,size: 32,),
          ),
        ],
      ),
    );
  }
}
class IconContainer extends StatelessWidget {
  IconData icon;
  double size;
  Color color;
  IconContainer(this.icon,{this.size = 32.0,this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white,),
      ),
    );
  }
}

