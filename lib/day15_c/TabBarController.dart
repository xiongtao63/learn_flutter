import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  const TabBarControllerPage({Key? key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      print("${_controller.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"),
        bottom: TabBar(controller: _controller, tabs: [
          Tab(
            text: "分类",
          ),
          Tab(
            text: "分类1",
          ),
        ]),
      ),
      body: TabBarView(controller: _controller, children: [
        Center(
          child: Text("dddd"),
        ),
        Center(
          child: Text("dddd"),
        )
      ]),
    );
  }
}
