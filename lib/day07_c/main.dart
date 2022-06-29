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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 100,
              color: Colors.yellow,
              child: Text("flutter"),
            ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(width: 20,),
            Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: ListView(
                    children: [
                      Container(
                        height: 85,
                        child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),

                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 85,
                        child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover),
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
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
