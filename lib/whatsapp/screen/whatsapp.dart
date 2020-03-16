import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/camera.dart';
import '../screen/disc.dart';
import '../screen/stat.dart';
import '../screen/appel.dart';

class What extends StatefulWidget {
  const What({Key key}) : super(key: key);

  @override
  _WhatState createState() => _WhatState();
}

class _WhatState extends State<What> with SingleTickerProviderStateMixin {
  TabController tabControler;
  @override
  void initState() {
    tabControler = new TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       Column(
      //         children: <Widget>[
      //           Card(
      //             elevation: 20,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.only(
      //                 topLeft: Radius.circular(50),
      //                 topRight: Radius.circular(50),
      //                 bottomRight: Radius.circular(50),
      //               ),
      //             ),
      //             child: Container(
      //               height: 100,
      //               width: 100,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(50),
      //                   topRight: Radius.circular(50),
      //                   bottomRight: Radius.circular(50),
      //                 ),
      //                 color: Colors.green,
      //                 image: DecorationImage(
      //                   image: AssetImage("images/14.png"),
      //                   // fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 20),
      //           Text("Whatsapp",
      //               style: TextStyle(
      //                   fontWeight: FontWeight.bold,
      //                   fontSize: 25,
      //                   color: Colors.black)),
      //           SizedBox(height: 10),
      //           Text("Best Application in the world chat",
      //               style: TextStyle(
      //                   fontSize: 17, color: Colors.black.withOpacity(0.5))),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff075e54),
        title: Text(
          "Whatsapp",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        // Navigator.pushNamed(context, 'introface');
                      }),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.more_vert, color: Colors.white),
                      onPressed: () {
                        // Navigator.pushNamed(context, 'homeface');
                      }),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          controller: tabControler,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "DISC",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "APPELS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabControler,
        children: [
          Camera(),
          Disc(),
          Stat(),
          Appel(),
        ],
      ),
    );
  }
}
