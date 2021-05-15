import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'ほげほげ';

  void changeKboyText() {
    kboyText = 'kboyさんかっこいい！！！';
    notifyListeners();
  }
}
