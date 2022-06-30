import 'package:flutter/material.dart';
import 'package:learn_flutter/day12_c/Category.dart';
import 'package:learn_flutter/day12_c/Home.dart';
import 'package:learn_flutter/day12_c/Setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("scaffold标题"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.red,
        // selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        iconSize: 36,
        fixedColor: Colors.orange,
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