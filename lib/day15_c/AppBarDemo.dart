import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              tooltip: "search",
            ),

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    flex: 1,
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: "remen",
                        ),
                        Tab(
                          text: "remen",
                        ),
                      ],
                    ))
              ],
            ),
            // leading: IconButton(
            //     onPressed: (){
            //       print("menu");
            //     },
            //     icon: Icon(Icons.menu)),
            // actions: [
            //   IconButton(
            //       onPressed: (){
            //         print("search");
            //       },
            //       icon: Icon(Icons.search)),
            //   IconButton(
            //       onPressed: (){
            //         print("settings");
            //       },
            //       icon: Icon(Icons.settings)),
            // ],
            // bottom: TabBar(
            //   tabs: [
            //     Tab(
            //       text: "ddddd",
            //     ),
            //     Tab(
            //       text: "ddddd",
            //     ),
            //   ],
            // ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("dddddd"),
              ),
              Center(
                child: Text("dddddd11"),
              ),
            ],
          ),
        ));
  }
}
