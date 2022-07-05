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
    // return _createW(context) ;
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(

                  child: TabBar(
                    isScrollable: true,
                      indicatorColor: Colors.yellow,
                      labelColor: Colors.yellow,
                      unselectedLabelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
                Tab(
                  text: "ddddd",
                ),
              ])
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("ddddd"),
            Text("ddddd1"),
            Text("ddddd2"),
            Text("ddddd3"),
            Text("ddddd4"),
            Text("ddddd5"),
            Text("ddddd6"),
            Text("ddddd7"),
          ],
        ),
      ),
    );
  }
}

Widget _createW(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) => FormPage(title: "ddddddddddddd",))
            // );
            Navigator.pushNamed(context, "/form");
          },
          child: Text("跳转的表单")),
    ],
  );
}
