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
      home:Taps(),

    );
  }
}
class Taps extends StatefulWidget {
  const Taps({Key? key}) : super(key: key);

  @override
  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("scaffold标题"),
      ),
      body: Text("dddd"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.yellow,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "设置"),
        ],
      ),
    );
  }
}






