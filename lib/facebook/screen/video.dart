import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/wid_watch.dart';

class Video extends StatelessWidget {
  const Video({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Watch",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: Icon(
                              FontAwesomeIcons.search,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "A regarder",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 60,
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("images/6.png"),
                              maxRadius: 13,
                            ),
                            Positioned(
                              left: 18,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(100)),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("images/7.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 35,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(100)),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("images/8.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                alignment: Alignment.center,
                height: 25,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.notifications,
                        color: Color(0XFF217CEF),
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "15 Pages ont publié de nouvelles vidéos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF217CEF),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ...wacth(context),
          ],
        ),
      ),
    );
  }
}
