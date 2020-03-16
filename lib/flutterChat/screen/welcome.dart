import 'package:flutter/material.dart';
import '../widget/cadScroll.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CardScroll(),
        ],
      ),
    );
  }
}
