import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/home.dart';
import '../screen/invit.dart';
import '../screen/group.dart';
import '../screen/video.dart';
import '../screen/notif.dart';
import '../screen/menu.dart';

class Wid_tdface extends StatefulWidget {
  const Wid_tdface({Key key}) : super(key: key);

  @override
  _Wid_tdfaceState createState() => _Wid_tdfaceState();
}

class _Wid_tdfaceState extends State<Wid_tdface>
    with SingleTickerProviderStateMixin {
  TabController tabControler;
  @override
  void initState() {
    tabControler = new TabController(
      length: 6,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          "Facebook",
          style: TextStyle(color: Color(0XFF217CEF)),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.05),
                    child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black54,
                        ),
                        onPressed: () {})),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.05),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        top: 5,
                        child: CircleAvatar(
                          maxRadius: 8,
                          backgroundColor: Colors.red,
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            FontAwesomeIcons.facebookMessenger,
                            color: Colors.black54,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
        bottom: TabBar(
          indicatorColor: Color(0XFF217CEF),
          indicatorSize: TabBarIndicatorSize.tab,
          unselectedLabelColor: Colors.black54,
          labelColor: Color(0XFF217CEF),
          controller: tabControler,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_outline,
                //
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.users,
                //
                size: 18,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.ondemand_video,
                //
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.solidBell,
                //
              ),
            ),
            Tab(
                icon: Icon(
              FontAwesomeIcons.bars,
              //
              size: 18,
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabControler,
        children: [Hom(), Invit(), Group(), Video(), Notif(), Menu()],
      ),
    );
  }
}
