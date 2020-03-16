import 'package:flutter/material.dart';
import '../../whatsapp/screen/whatsapp.dart';

Widget appBarM(String title, IconData icon1, IconData icon2) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(title),
    actions: <Widget>[
      IconButton(icon: Icon(icon1), onPressed: () {}),
      IconButton(icon: Icon(icon2), onPressed: () {}),
    ],
  );
}

class Widglist extends StatelessWidget {
  final String img;
  final String name;
  final String dateadd;
  Widglist({@required this.img, this.name, this.dateadd});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 70,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(img),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 133,
                              child: Text(
                                dateadd,
                                style: TextStyle(color: Colors.black54),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
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
          padding: EdgeInsets.only(left: 95, right: 10),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
