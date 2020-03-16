import 'package:flutter/material.dart';
import 'dart:math' as math;

class WidgCont extends StatelessWidget {
  const WidgCont({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 12,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Color((math.Random().nextDouble() * 0XFFFFFF)
                                    .toInt() <<
                                0)
                            .withOpacity(1),
                        width: 2),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("images/7.png"), fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 32,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/logo_min.png"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("Prunelle"),
        ],
      ),
    );
  }
}
