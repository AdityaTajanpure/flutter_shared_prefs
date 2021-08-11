import 'package:flutter/material.dart';
import 'package:flutter_shared_prefs/screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter shared prefs demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        color: Colors.redAccent,
      ),
    );
  }
}
