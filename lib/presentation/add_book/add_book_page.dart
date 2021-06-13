import 'package:flutter/material.dart';
import 'package:haruaki_app/domain/book.dart';
import 'package:provider/provider.dart';

import 'add_book_model.dart';

class AddBookPage extends StatelessWidget {
  AddBookPage({this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    final bool isUpdate = book != null;
    final textEditingController = TextEditingController();
    if (isUpdate) {
      textEditingController.text = book.title;
    }
    return ChangeNotifierProvider<AddBookModel>(
      create: (_) => AddBookModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            isUpdate ? '本を編集' : '本を追加'),
          
        ),
        body: Consumer<AddBookModel>(builder: (context, model, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 15, 215, 5),
                  child: Text(
                    '今日の調子はどう？',
                    style: TextStyle(
                      color: HexColor('#696969'),
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    // 枠線
                    border: Border.all(color: HexColor('#e6c0c0'), width: 2),
                    // 角丸
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 15),
                  width: 400.0,
                  height: 200.0,
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: '思いつくままに書き残してみよう',
                    ),
                    onChanged: (text) {
                      model.bookTitle = text;
                    },
                    maxLength: 300, //入力最大文字数
                    maxLines: 7, //行数
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // 枠線
                        border:
                            Border.all(color: HexColor('#e6c0c0'), width: 2),
                        // 角丸
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 30),
                      padding: EdgeInsets.fromLTRB(5, 30, 5, 5),
                      width: deviceWidth * 0.93,
                      height: 125.0,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.star_border_purple500_outlined,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "最高",
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: HexColor('#696969'),
                                ),
                              ),
                              ElevatedButton(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.wb_sunny_outlined,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "良い",
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: HexColor('#696969'),
                                ),
                              ),
                              ElevatedButton(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.wb_cloudy_outlined,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "普通",
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: HexColor('#696969'),
                                ),
                              ),
                              ElevatedButton(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.umbrella_outlined,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "悪い",
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: HexColor('#696969'),
                                ),
                              ),
                              ElevatedButton(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.bolt,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        "最悪",
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: HexColor('#696969'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: Text(isUpdate ? '更新する' : '追加する'),
                      style: ElevatedButton.styleFrom(
                        primary: HexColor('#38b48b'),
                        onPrimary: HexColor('#ffffff'),
                        padding: EdgeInsets.all(8.0),
                      ),
                      onPressed: () async {
                        if (isUpdate) {
                          await updateBook(model, context);
                        } else {
                          await addBook(model, context);
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
      
    
  } 


Future addBook(AddBookModel model, BuildContext context) async {
  try {
    await model.addBookToFirebase();
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('保存しました！'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    Navigator.of(context).pop();
  } catch (e) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(e.toString()),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

Future updateBook(AddBookModel model, BuildContext context) async {
  try {
                                await model.updateBook(book);
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('更新しました！'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    Navigator.of(context).pop();
  } catch (e) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(e.toString()),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
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
