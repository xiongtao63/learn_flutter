import 'package:flutter/material.dart';

import '../day13/pages/Search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //       builder:(context){
              //         return SearchPage();
              //       })
              // );
              Navigator.pushNamed(context, "/search",arguments: {
                "id": 12131
              });
            },
            child: Text("跳转到搜索页面"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Theme.of(context).accentColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, "/product");
        }, child: Text("跳转到商品页面"))
      ],
    );
  }
}
