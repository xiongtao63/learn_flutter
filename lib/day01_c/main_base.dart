import 'package:flutter/material.dart';



void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
       child: Text(
         "hello flutter 你好",
         textDirection: TextDirection.ltr,
         style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.w800,
           color: Colors.yellow
         ),
       ),
     );
  }

}

