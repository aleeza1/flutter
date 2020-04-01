import 'package:flutter/material.dart';
import 'package:ui/counter.dart';
import 'package:ui/layout.dart';

class DashboardUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dashboard"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            GridTile(
                child: IconButton(
                    icon: Icon(Icons.format_indent_increase),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Counter()));
                    }),
                footer: Align(
                  alignment: Alignment.center,
                  child: Text("Counter"),
                )),
            GridTile(
                child: IconButton(
                    icon: Icon(Icons.label_outline),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LayoutUi()));
                    }),
                footer:
                    Align(alignment: Alignment.center, child: Text("Layout"))),
          ],
        ));
  }
}
