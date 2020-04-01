import 'package:flutter/material.dart';

class DashboardUi extends StatefulWidget {
  @override
  _DashboardUiState createState() => _DashboardUiState();
}

class _DashboardUiState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Dashboard"),
            ),
            body: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                GridTile(
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.grid_on),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer:
                      Align(alignment: Alignment.center, child: Text("Grid")),
                ),
                GridTile(
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.list),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer:
                      Align(alignment: Alignment.center, child: Text("Icons")),
                ),
                GridTile(
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.zoom_in),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer: Align(
                      alignment: Alignment.center,
                      child: Text("Zoomable Images")),
                ),
                GridTile(
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.zoom_in),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer: Align(
                      alignment: Alignment.center,
                      child: Text("Zoomable Images")),
                ),
                GridTile(
                  child: Container(
                    child: IconButton(
                        tooltip: 'Tables',
                        icon: Icon(Icons.table_chart),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer:
                      Align(alignment: Alignment.center, child: Text("Tables")),
                ),
                GridTile(
                  child: Container(
                    child: IconButton(
                        icon: Icon(Icons.add_box),
                        onPressed: () {
                          _displayMessage();
                        }),
                  ),
                  footer: Align(
                      alignment: Alignment.center, child: Text("Buttons")),
                ),
              ],
            )));
  }

  void _displayMessage() {
    print("You pressed an icon");
  }
}

