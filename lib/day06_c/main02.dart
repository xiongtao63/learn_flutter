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

  List<Widget> getListData(){
    List<Widget> list = [];
    for(int i=0;i<20;i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text("这是${i}",style: TextStyle(
          color: Colors.white,fontSize: 20
        ),),
        color: Colors.blue,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
      childAspectRatio: 16/9,
      padding: EdgeInsets.all(10),

      children: this.getListData(),
    );
  }
}
