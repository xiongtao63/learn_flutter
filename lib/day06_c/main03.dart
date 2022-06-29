import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../day05/res/listData.dart';


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
    var tempList = listData.map((value){
      return Container(
        child: Column(
          children: [
            Image.network(value["imageUrl"]),
            SizedBox(height: 10,),
            Text(value["title"],textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20
            ),maxLines: 1,)
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(233, 233,233, 0.9),width: 1)
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
      // childAspectRatio: 16/9,
      padding: EdgeInsets.all(10),

      children: this.getListData(),
    );
  }
}
