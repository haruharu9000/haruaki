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
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NextPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            trailing: Icon(Icons.arrow_forward_ios),
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