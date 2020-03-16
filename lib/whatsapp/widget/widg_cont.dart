import 'package:flutter/material.dart';

class What extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsetsDirectional.only(top: 10, bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          height: 70,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage('images/10.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Amor',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Icon(Icons.check),
                          Container(
                            width: 200,
                            child: Text(
                                "Mi amor, on fait comment? On fait comment pour le taff de demain ?",
                                style: TextStyle(color: Colors.black),
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text("12:42", style: TextStyle(color: Colors.black54)),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("2"),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 95, right: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
