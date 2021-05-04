import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  final items = List<String>.generate(50, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: Container(
        width: double.infinity,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            }
          // children: <Widget>[
          // ListTile(
          //   leading: Icon(Icons.map),
          //   title: Text('Map'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.photo_album),
          //   title: Text('Album'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.phone),
          //   title: Text('Phone'),
          // ),
          // ],
        ),
      ),
    );
  }

}