import 'package:flutter/material.dart';
class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  const ProductInfoPage({Key? key,required this.arguments}) : super(key: key);

  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ddd"),

      ),
      body: Container(
        child: Text("pid=${widget.arguments['pid']}"),
      ),
    );
  }
}
