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
      home: MyHomePage(title: 'hogeApp'),
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
              decoration: BoxDecoration(
                // 枠線
                border: Border.all(color: Colors.black, width: 1),
                // 角丸
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.only(top: 50, right: 30, bottom: 100, left: 30),
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('お付き合いをはじめて',
                    style: TextStyle(
                    height: 0,
                    ),
                  ),
                  Text('100日目',
                    style: TextStyle(
                    height: 2.0,
                        fontSize: 22,
                    ),
                  ),
                  new Divider(
                      color: Colors.black
                  ),
                  Text('お付き合い記念日  :  2021年1月1日',
                    style: TextStyle(
                      height: 3.0,
                    ),
                  ),
                  new Divider(
                      color: Colors.black
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(-0.28, 0),
                        child : Text('次の記念日まで  :  31'
                            '日',
                        style: TextStyle(
                        height: 3.0,
                        ),
                      ),
                    ),
                  ),
                  new Divider(
                      color: Colors.black
                  ),
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
