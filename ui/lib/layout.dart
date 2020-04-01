import 'package:flutter/material.dart';

class LayoutUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
           Image.asset(
              "assets/aleeza.jpg",
              height: 500,
              width: 500,
            ),
          Text(
            "Aleeza Dhakal",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[rating(), Text("50 Reviews")]),
        ]),
      ),
    );
  }

  Widget rating() {
    return Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.red[500]),
        Icon(Icons.star, color: Colors.white),
        Icon(Icons.star, color: Colors.white),
      ],
    );
  }
}
