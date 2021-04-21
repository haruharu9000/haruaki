import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String hogeText = 'hoge';

  void changeKboyText() {
    hogeText = 'ほげ';
    notifyListeners();
  }
}
