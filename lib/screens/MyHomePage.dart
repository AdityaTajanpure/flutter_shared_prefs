import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _curColor;
  final Map<String, Color> colors = {
    'redAccent': Colors.redAccent,
    'yellowAccent': Colors.yellowAccent,
    'pinkAccent': Colors.pinkAccent,
    'blueAccent': Colors.blueAccent,
    'cyanAccent': Colors.cyanAccent,
    'amberAccent': Colors.amberAccent,
  };

  @override
  void initState() {
    super.initState();
    _getColor();
  }

  void _getColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String colorName = prefs.getString("color");
    setState(() {
      _curColor = colors[colorName];
    });
  }

  void _setColor(String name, Color color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("color", name);
    setState(() {
      _curColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter shared prefs demo"),
          backgroundColor: _curColor,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Current Saved Color is: ${prefs.getString("color")}"),
            SizedBox(
              height: 50,
            ),
            for (var entry in colors.entries)
              InkWell(
                onTap: () => _setColor(entry.key, entry.value),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: entry.value,
                ),
              )
          ],
        ));
  }
}
