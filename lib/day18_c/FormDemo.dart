import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  const FormDemoPage({Key? key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  var userName;
  int sex = 1;
  String info = "";
  List hobby =[
    {
      "title": "吃饭",
      "checked":true,
    },
    {
      "title": "111",
      "checked":true,
    },
    {
      "title": "222",
      "checked":false
    },
  ];
  _sexChange(v){
      setState(() {
        this.sex = v as int;
      });
  }
  List<Widget> _getHobby(){
    List<Widget> tempList = [];
    for(int i = 0;i<hobby.length;i++){
      tempList.add(Row(
        children: [
          Text("${hobby[i]["title"]}:"),
          Checkbox(value: hobby[i]["checked"], onChanged: (v){
            setState(() {
              hobby[i]["checked"] = v;
            });
          })
        ],
      ));
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormDemoPage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "输入用户信息"
                ),
                onChanged: (v){
                  setState(() {
                    userName = v;
                  });
                },
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("男"),
                  Radio(value: 1, groupValue: this.sex, onChanged: _sexChange),
                  SizedBox(width: 30,),
                  Text("女"),
                  Radio(value: 2, groupValue: this.sex, onChanged: _sexChange)
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: _getHobby(),
              ),
              SizedBox(height: 20,),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                    hintText: "描述信息",
                    border: OutlineInputBorder()
                ),
                onChanged: (v){
                  setState(() {
                    this.info = v;
                  });
                },
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print(this.userName);
                    print(this.sex);
                    print(this.info);
                    print(this.hobby);

                  },
                  child: Text("提交"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white)
                  ),

                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
