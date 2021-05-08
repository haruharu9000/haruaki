import 'package:flutter/material.dart';
import 'package:haruaki_app/book_list_page.dart';
import 'package:provider/provider.dart';
import 'add_book_model.dart';

class AddBookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "日記",
            style: TextStyle(
              color: HexColor('#696969'),
            ),
          ),
        ),
        body: Consumer<AddBookModel>(
          builder: (context, model, child) {
            return Container(
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
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 180, 15),
                    child: Text(
                      '調子はいかがですか？',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Radio(
                              activeColor: Colors.blueAccent,
                            ),
                            Text('幸せ'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Radio(
                              activeColor: Colors.blueAccent,
                            ),
                            Text('うれしい'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Radio(
                              activeColor: Colors.blueAccent,
                            ),
                            Text('楽しい'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Radio(
                              activeColor: Colors.blueAccent,
                            ),
                            Text('いい感じ'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.blueAccent,
                                ),
                                Text('まあまあ'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.blueAccent,
                                ),
                                Text('不安'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.blueAccent,
                                ),
                                Text('かなしい'),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Radio(
                                  activeColor: Colors.blueAccent,
                                ),
                                Text('ひどい'),
                              ],
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            );
          },
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
