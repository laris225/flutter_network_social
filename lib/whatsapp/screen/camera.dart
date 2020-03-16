import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  const Camera({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
      ),
    );
  }
}
