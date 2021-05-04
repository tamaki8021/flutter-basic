import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  final myFocusNode = FocusNode();
  final myController = TextEditingController();

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter form'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: '名前',
              ),
              onChanged: (text) {
                name = text;
              },
              autofocus: true,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '趣味',
              ),
              // autofocus: true,
              // focusNode: myFocusNode,
            ),
            RaisedButton(
              child: Text('新規登録'),
              onPressed: () {
                // myFocusNode.requestFocus();
                final hobbyText = myController.text;
              },
            ),
          ],
        ),
      ),
    );
  }

}