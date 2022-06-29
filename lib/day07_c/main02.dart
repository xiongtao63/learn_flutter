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
    return IconContainer(Icons.search,color: Colors.black87,size: 44,);
  }
}

class IconContainer extends StatelessWidget{
  IconData icon;
  double size;
  Color color;
  IconContainer(this.icon,{this.color = Colors.red,this.size = 32});
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
