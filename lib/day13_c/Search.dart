import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  final  arguments;
  const SearchPage({Key? key,this.arguments}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Text("搜索页面内容区域${widget.arguments != null ? widget.arguments['id']:"0"}"),
    );
  }
}
