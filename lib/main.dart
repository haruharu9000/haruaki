import 'package:flutter/material.dart';

void main() => runApp(TestPage());

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  String _payment = '未選択';

  void _handleRadioButton(String payment) => setState(() { _payment = payment; } );

  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(title: Text("ほむほむゆんゆ日記",
          style: TextStyle(color: HexColor('#696969'),
          ),
        ),
              backgroundColor: HexColor('#fff3b8'),
            ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '今、どんな気持ちですか？',
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
            margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            width: 300.0,
            height: 300.0,
            child: TextField(
              maxLength: 140, //入力最大文字数
              maxLines:10,
            ),

            ),

          Container(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '体調はいかがですか？',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                Column(
                  children: <Widget>[
                    Radio(
                      activeColor: Colors.blueAccent,
                      value: 'とても良い',
                      groupValue: _payment,
                      onChanged: _handleRadioButton,
                    ),
                    Text('とても良い'),
                  ],
                ),Column(
                  children: <Widget>[
                    Radio(
                      activeColor: Colors.blueAccent,
                      value: '良い',
                      groupValue: _payment,
                      onChanged: _handleRadioButton,
                    ),
                    Text('良い'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Radio(
                      activeColor: Colors.blueAccent,
                      value: '悪い',
                      groupValue: _payment,
                      onChanged: _handleRadioButton,
                    ),
                    Text('悪い'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Radio(
                      activeColor: Colors.blueAccent,
                      value: 'とても悪い',
                      groupValue: _payment,
                      onChanged: _handleRadioButton,
                      ),
                    Text('とても悪い'),
    ],
                ),
              ],
            ),
            ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: null,
                child: Text('できた'),
          ),

            ],
          ),
         ],
        ),
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