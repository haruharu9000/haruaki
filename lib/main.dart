import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'yunyuApp'),
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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              // 内側の余白
              padding: EdgeInsets.all(32),
              child: Text('彼氏と彼女',),
            ),
            Container(
              decoration: BoxDecoration(
                // 枠線
                border: Border.all(color: Colors.black, width: 1),
                // 角丸
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.only(top: 30, right: 30, bottom: 70, left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('お付き合いをはじめて',
                    style: TextStyle(
                    height: 2.0,
                    ),
                  ),
                  Text('100日目',
                    style: TextStyle(
                    height: 2.0,
                    ),
                  ),
                  new Divider(
                      color: Colors.black
                  ),
                  Text('お付き合い記念日 : 2021年1月1日',
                    style: TextStyle(
                      height: 2.0,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
