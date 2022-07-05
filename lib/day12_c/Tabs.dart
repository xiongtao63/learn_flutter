import 'package:flutter/material.dart';
import 'package:learn_flutter/day12_c/Category.dart';
import 'package:learn_flutter/day12_c/Home.dart';
import 'package:learn_flutter/day12_c/Setting.dart';

class Tabs extends StatefulWidget {
  final index;

  const Tabs({Key? key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scaffold标题"),
      ),
      body: _pageList[_currentIndex],
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
              _currentIndex = 1;
            });
          },
          backgroundColor: _currentIndex == 1? Colors.orange:Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.red,
        // selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        iconSize: 36,
        fixedColor: Colors.orange,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: UserAccountsDrawerHeader(
                      accountEmail: Text("ddd"),
                      accountName: Text("123@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage("https://www.itying.com/images/flutter/4.png"),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                          fit: BoxFit.cover
                            )
                      ),
                      otherAccountsPictures: [
                        Image.network("https://www.itying.com/images/flutter/4.png"),
                        Image.network("https://www.itying.com/images/flutter/5.png"),
                        Image.network("https://www.itying.com/images/flutter/5.png"),
                        Image.network("https://www.itying.com/images/flutter/5.png"),
                      ],

                    )
                )
              ],
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.search),
              ),
              title: Text("aaaa"),
              onTap: () {

              },

            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("用户中心"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed("/user");
              },

            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("shezhi"),
              onTap: () {

              },

            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("dddddddddddddd"),
      ),
    );
  }
}