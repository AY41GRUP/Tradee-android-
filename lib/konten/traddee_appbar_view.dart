import 'package:flutter/material.dart';

class TraddeeAppBar extends AppBar {
  TraddeeAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.grey[50],
            flexibleSpace: _buildTraddeeAppBar());

  static Widget _buildTraddeeAppBar() {
    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "assets/images/logo.png",
            height: 50.0,
            width: 100.0,
          ),
          new Text("Traddee"),
        ],
      ),
    );
  }
}
