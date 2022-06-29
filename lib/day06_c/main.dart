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

  Widget getListData(context,index){

    return Container(
      child: Column(
        children: [
          Image.network(listData[index]["imageUrl"]),
          SizedBox(height: 10,),
          Text(listData[index]["title"],textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20
          ),maxLines: 1,)
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(233, 233,233, 0.9),width: 1)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
        ),
      itemCount: listData.length,
      itemBuilder:this.getListData,
    );
  }
}
