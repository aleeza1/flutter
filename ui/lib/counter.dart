import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
         alignment: Alignment.bottomCenter,
         padding: EdgeInsets.all(100),
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: _increment,
            child: Text("Increment"),
          ),
          Text(
            "Count: $_count",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    ));
  }
}
