import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: Magic8(),
      ),
    ),
  );
}

class Magic8 extends StatefulWidget {
  @override
  _Magic8State createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int num = 1;
  void RandomAns() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('I got clicked');
              RandomAns();
            },
            child: Image(
              image: AssetImage('images/ball$num.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
