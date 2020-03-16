import 'package:flutter/material.dart';

Widget wid_appBar(String title, IconData icon1) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1.5,
    title: Text(title),
    actions: <Widget>[
      IconButton(icon: Icon(icon1), onPressed: () {}),
    ],
  );
}
