import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
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
    body: Container (
      height: double.infinity,
      color: Colors.white,
      child: Center(
        // ignore: deprecated_member_use
        child: OutlineButton(
          child: Text('戻る'),
            onPressed: () {
            Navigator.pop(context);
            },
          ),
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