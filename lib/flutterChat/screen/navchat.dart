import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../screen/homeDisc.dart';
// import 'package:document/messenger/screen/listapel.dart';

class Navchat extends StatefulWidget {
  @override
  _NavchatState createState() => _NavchatState();
}

class _NavchatState extends State<Navchat> {
  void ontaped(int index) {
    setState(() {
      pageindex = index;
    });
  }

  List viewList = [
    HomeDisc(),
    // Listapel(),
  ];
  int pageindex = 0;
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              scaffoldkey.currentState.openDrawer();
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("images/8.png"),
            )),
        title: Text(
          "Flutter Chat",
          style: TextStyle(
              fontSize: 39,
              fontFamily: "Billabong",
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawerchat(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: 1,
        backgroundColor: Colors.white,
        currentIndex: pageindex,
        onTap: ontaped,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              activeIcon: Icon(
                FontAwesomeIcons.solidComment,
                color: Colors.deepPurple,
              ),
              title: Text(
                "Discussions",
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(
                FontAwesomeIcons.solidComment,
                color: Colors.black,
              )),
          BubbleBottomBarItem(
            activeIcon: Icon(
              Icons.people,
              color: Colors.red,
            ),
            backgroundColor: Colors.deepPurple,
            title: Text("Appel", style: TextStyle(color: Colors.white)),
            icon: Icon(Icons.people, color: Colors.black),
          ),
        ],
      ),
      body: viewList.elementAt(pageindex),
    );
  }

  Widget Drawerchat(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/10.png"),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.color))),
              child: Container(
                decoration: BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                width: 300,
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/new6.jpg"),
                    ),
                    Text("cedric Axel"),
                    Text("coboguie@gmail.com"),
                  ],
                ),
              )),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "profile");
                    },
                    leading: Icon(
                      Icons.person,
                      color: Color(0xff0707ed),
                    ),
                    title: Text("Mon profil")),
                ListTile(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "contacte");
                  },
                  leading: Icon(
                    Icons.people,
                    color: Color(0xff0707ed),
                  ),
                  title: Text("Mes contacts"),
                ),
                ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.settings,
                      color: Color(0xff0707ed),
                    ),
                    title: Text("Parametre")),
                ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.share,
                      color: Color(0xff0707ed),
                    ),
                    title: Text("Partager")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
