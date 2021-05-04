import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('大学'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Taro',
              style: TextStyle(
                fontSize: 50,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
            Container(
                width: double.infinity,
                child: Text(
                  'maruko',
                  textAlign: TextAlign.center,
                )
            ),
          ],
        ),
      ),
    );
  }
}