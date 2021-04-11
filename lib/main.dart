import 'package:flutter/material.dart';
import 'package:haruaki_app/next_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo App'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("交換日記",
          style: TextStyle(color: HexColor('#696969'),
          ),
          ),
            backgroundColor: HexColor('#fff3b8'),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '今日はどんな1日でしたか？',
                style: TextStyle(
                  fontSize: 20,
                  ),
              ),
          Container(

            decoration: BoxDecoration(
              // 枠線
              border: Border.all(color: HexColor('#e6c0c0'), width: 2),
              // 角丸
              borderRadius: BorderRadius.circular(8),

            ),
            margin: EdgeInsets.fromLTRB(15, 15, 15, 50),
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            width: 400.0,
            height: 300.0,
            child: TextField(
              maxLength: 300, //入力最大文字数
              maxLines:11,
            ),

            ),
          Center(
            // ignore: deprecated_member_use
            child: OutlinedButton(
              child: Text('投稿'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NextPage(),
                  ),
                );
              },
            ),
          ),
         ],
        ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}