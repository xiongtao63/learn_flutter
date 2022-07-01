import 'package:flutter/material.dart';

import '../day12_c/Tabs.dart';


class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text("输入验证码完成注册"),
          SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Tabs(index: 2,)),
                    (route) => route == null);
          }, child: Text("确定"))
        ],
      ),
    );
  }
}
