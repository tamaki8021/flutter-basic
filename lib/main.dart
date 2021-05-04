import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';
import 'package:flutter_app/text_page.dart';
import 'package:flutter_app/form_page.dart';
import 'package:flutter_app/list_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Practice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share)
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            RaisedButton(
              child: Text('次へ'),
              onPressed: () {
                //画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage('test'))
                );
              },
            ),
            RaisedButton(
              child: Text('text'),
              onPressed: () {
                //画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextPage())
                );
              },
            ),
            RaisedButton(
              child: Text('form'),
              onPressed: () {
                //画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage())
                );
              },
            ),
            RaisedButton(
              child: Text('list'),
              onPressed: () {
                //画面遷移
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
