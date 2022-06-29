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
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          alignment: Alignment.center,
          children: const [
            Positioned(child: Icon(Icons.home,size: 30,color: Colors.white,)),
            Positioned(
                child: Icon(Icons.home,size: 30,color: Colors.white,),
              left: 100,
              top: 50,
            ),
            Positioned(
                child: Icon(Icons.home,size: 30,color: Colors.white,),
            right: 10,
            bottom: 0,),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  IconData icon;
  double size;
  Color color;

  IconContainer(this.icon, {this.size = 32.0, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}
