import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("dddddddddd"),
        ),
        ListTile(
          title: Text("dddddddddd"),
        ),
        ListTile(
          title: Text("dddddddddd"),
        )
      ],
    );
  }
}
