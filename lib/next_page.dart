import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  // イニシャライズ
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter practice'),
      ),
      body: Container(
        color: Colors.red,
        child: Text(name),
      ),
    );
  }
}
