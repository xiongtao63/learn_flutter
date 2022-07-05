import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  var flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBoxDemo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                  value: this.flag,
                  onChanged: (value) {
                    setState(() {
                      this.flag = value!;
                    });
                  },
                activeColor: Colors.red,
                  )
            ],
          ),
          Row(
            children: [
              Text(this.flag?"选择":"未选中")
            ],
          ),
          SizedBox(height: 40),
          CheckboxListTile(
              value: this.flag,
              onChanged: (v){
                setState(() {
                  this.flag = v!;
                });
              },
            title: Text("男"),
            subtitle: Text("sdfdsf"),
            secondary: Icon(Icons.help),
            selected: this.flag,
          )
        ],
      ),
    );
  }
}
