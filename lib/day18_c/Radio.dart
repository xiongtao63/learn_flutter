import 'package:flutter/material.dart';
class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int sex = 1;
  bool flag=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioDemo"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("男"),
                Radio(
                    value: 1,
                    groupValue: sex,
                    onChanged: (value){
                      setState(() {
                        this.sex = value as int;
                      });
                    }
                ),
                SizedBox(width: 30,),
                Text("女"),
                Radio(
                    value: 2,
                    groupValue: sex,
                    onChanged: (value){
                      setState(() {
                        this.sex = value as int;
                      });
                    }
                ),
              ],
            ),
            Column(
              children: [
                RadioListTile(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: (v){
                      setState(() {
                        this.sex = v as int;
                      });
                    },
                  title: Text("标题"),
                  subtitle: Text("eeeeeeee"),
                  secondary: Icon(Icons.help),
                  selected: this.sex == 1,
                ),
                SizedBox(height: 20,),
                RadioListTile(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (v){
                    setState(() {
                      this.sex = v as int;
                    });
                  },
                  title: Text("标题"),
                  subtitle: Text("eeeeeeee"),
                  secondary: Image.network('https://www.itying.com/images/flutter/1.png'),
                  selected: this.sex == 2,
                ),
                SizedBox(height: 20,),
                Switch(
                    value: flag,
                    onChanged: (v){
                      setState(() {
                        this.flag = v;
                      });
                    }
                ),
                SizedBox(height: 20,),
                SwitchListTile(
                    value: flag,
                    onChanged: (v){
                    setState(() {
                      flag = v;
                    });
                },
                  title: Text("dddd"),
                  subtitle: Text("dddddddddd"),
                  secondary: Image.network("https://www.itying.com/images/flutter/1.png"),
                  selected: this.flag,
                )
              ],
            )
          ],
        ),
      )
    );
  }
}

