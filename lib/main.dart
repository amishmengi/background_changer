import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello friend!!!!!!!!!!'),
          elevation: 10.0,
          backgroundColor: Colors.black,
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.brown,
    Colors.grey,
    Colors.pink,
    Colors.red,
  ];
  var currentColor = Colors.white;
  var currentColor2 = Colors.black;
  setRandomColor() {
    var rnd = Random().nextInt(9);
    var rnd1 = Random().nextInt(9);
    setState(() {
      currentColor = colors[rnd];
      currentColor2 = colors[rnd1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          onPressed: setRandomColor,
          color: currentColor2,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            'change it!!!!!!!!',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
