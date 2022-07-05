import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black54,),
        backgroundColor: Colors.yellow,
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              RaisedButton(
                  child: Text("普通按钮"),
                  onPressed: (){}
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: (){},
                child: Text("颜色按钮"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.red)
                ),
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                onPressed: (){},
                child: Text("阴影按钮"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all(20)
                ),
              ),
              SizedBox(width: 20,),
              ElevatedButton.icon(onPressed: (){},
                icon: Icon(Icons.settings),
                label: Text("图标按钮"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 90,
                child: ElevatedButton(
                  child: Text("宽高按钮"),
                  onPressed: (){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(10)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      child: Text("自适应"),
                      onPressed: (){},
                    ),
                  ))
            ],
          ),

          Row(
            children: [
              ElevatedButton(
                onPressed: (){},
                child: Text("颜色按钮"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ))
                ),
              ),
              Container(
                height: 60,
                child:  ElevatedButton(
                  onPressed: (){},
                  child: Text("颜色按钮"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    foregroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(CircleBorder(
                        side: BorderSide(color: Colors.white)
                    )),
                  ),
                ),
              )
            ],
          ),

          Row(children: [
            TextButton(onPressed: (){},
              child: Text("扁平按钮",style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)
              ),
            ),
            SizedBox(width: 20,),
            OutlinedButton(onPressed: (){}, child: Text("边框按钮"),
            )
          ],),
          Row(children: [
            Expanded(
                child:Container(
                  padding: EdgeInsets.all(20),
                  child:  ElevatedButton(
                    child: Text("注册"),
                    onPressed: (){},

                  ),
                ))
          ],
          ),
          MyButton(text: "自定义",width: 200.0,height: 60.0,pressd: (){
            print('自定义按钮');
          },)

        ],
      )
    );
  }
}

class MyButton extends StatelessWidget{
  final height;
  final width;
  final pressd;
  final text;
  MyButton({this.text = '',this.width = 60,this.height = 60,this.pressd = null});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    height: height,
      width: width,
      child: ElevatedButton(
        child: Text(text),
        onPressed: pressd,
      ),
    );
  }

}
