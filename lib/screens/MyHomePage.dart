import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final Color color;
  const MyHomePage({Key key, @required this.color}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter shared prefs demo"),
          backgroundColor: widget.color,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Saved Color is: ${widget.color}"),
            MyColouredContainer(
              color: Colors.redAccent,
            ),
            MyColouredContainer(
              color: Colors.yellowAccent,
            ),
            MyColouredContainer(
              color: Colors.pinkAccent,
            ),
            MyColouredContainer(
              color: Colors.blueAccent,
            ),
            MyColouredContainer(
              color: Colors.cyanAccent,
            ),
            MyColouredContainer(
              color: Colors.amberAccent,
            ),
          ],
        ));
  }
}

class MyColouredContainer extends StatelessWidget {
  final Color color;
  const MyColouredContainer({
    Key key,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: this.color,
    );
  }
}
