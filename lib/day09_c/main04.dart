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
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 19/9,child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover)),
              ListTile(
                title: Text("张三",style: TextStyle(
                  fontSize: 30
                )),
                subtitle: Text("dddddddddddddd"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 19/9,child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover)),
              ListTile(
                title: Text("张三",style: TextStyle(
                  fontSize: 30
                )),
                subtitle: Text("dddddddddddddd"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 19/9,child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover)),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.itying.com/images/flutter/2.png"),
                ),
                title: Text("张三",style: TextStyle(
                  fontSize: 30
                )),
                subtitle: Text("dddddddddddddd"),
              )
            ],
          ),
        ),

      ],
    );
  }
}

