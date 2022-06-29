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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 16/9,
              child: Image.network(value["imageUrl"],fit: BoxFit.cover),),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["description"],maxLines:2,overflow: TextOverflow.ellipsis,),
              )

            ],
          ),
        );

      }).toList(),
    );
  }
}

