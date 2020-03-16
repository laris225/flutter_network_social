import 'package:flutter/material.dart';

Widget gradient(String image, double height, double widht) {
  return Container(
    height: height,
    width: widht,
    padding: EdgeInsets.all(2),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(colors: [
        Color(0XFFF09433),
        Color(0XFFE6683C),
        Color(0XFFDC2743),
        Color(0XFFCC2366),
        Color(0XFFBC1888),
      ]),
    ),
    child: CircleAvatar(
      backgroundImage: AssetImage(image),
    ),
  );
}
