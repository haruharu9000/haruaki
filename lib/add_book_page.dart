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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    '今日はどんな1日でしたか？',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  ElevatedButton(
                    child: Text('追加する'),
                    onPressed: () async {
                      await model.addBookToFirebase();
                    },
                  ),
                  Container(
                    child: TextField(
                      maxLength: 300, //入力最大文字数
                      maxLines: 11,
                      onChanged: (text) {
                        model.bookTitle = text;
                      },
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('#e6c0c0'), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.fromLTRB(15, 15, 15, 50),
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    width: 400.0,
                    height: 300.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
