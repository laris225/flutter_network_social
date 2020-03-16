import 'package:flutter/material.dart';

class WidgWhat extends StatelessWidget {
  final String img;
  final String name;
  final String msg;
  final String dateadd;
  final String nmb;
  WidgWhat({@required this.img, this.name, this.msg, this.dateadd, this.nmb});

  @override
  Widget build(BuildContext context) {
    return
        // InkWell(
        //   onTap: () {
        //     Navigator.push(context, 'message');
        //   },
        //   child:
        Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(img),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Text(
                              msg,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        dateadd,
                        style: TextStyle(color: Colors.green),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 13,
                        child: Text(
                          nmb,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80, right: 30),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
      // ),
    );
  }
}
