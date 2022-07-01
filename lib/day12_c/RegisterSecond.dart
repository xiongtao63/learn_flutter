import 'package:flutter/material.dart';


class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二步-验证码"),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text("输入验证码完成注册"),
          SizedBox(height: 40),
          ElevatedButton(onPressed: (){
            // Navigator.pushNamed(context, "/registerThird");
            Navigator.of(context).pushReplacementNamed("/registerThird");
          }, child: Text("下一步"))
        ],
      ),
    );
  }
}
