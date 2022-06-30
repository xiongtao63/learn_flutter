import 'package:flutter/material.dart';
import 'package:learn_flutter/day13_c/Form.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => FormPage(title: "ddddddddddddd",))
          // );
          Navigator.pushNamed(context, "/form");
        }, child: Text("跳转的表单"))
      ],
    );
  }
}
