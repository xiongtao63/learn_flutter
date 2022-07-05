import 'package:flutter/material.dart';
class TextFieldDemoPage extends StatefulWidget {
  const TextFieldDemoPage({Key? key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
   var _userName = TextEditingController();
   var _password ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFieldDemoPage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        // child: TextDemo(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextDemo(),
              SizedBox(height: 40,),
              TextField(
                decoration: InputDecoration(
                    hintText: "请输入用户名"
                ),
                controller: _userName,
                onChanged: (value){
                  setState(() {
                    _userName.text = value;
                  });
                },
              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "密码"
                ),

                onChanged: (value){
                  setState(() {
                    _password = value;
                  });
                },
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print(this._userName.text);
                    print(this._password);
                  },
                  child: Text("登录"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            TextField(),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: "请输入搜索雷锋",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "多行文本",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "密码",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  labelText: "用户名",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "密码",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                  hintText: "请输入用户名"
              ),
            ),
          ],
        ),
      )
    );
  }
}

