import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screen/homeDisc.dart';

class DrawerChat extends StatefulWidget {
  @override
  _DrawerChatState createState() => _DrawerChatState();
}

class _DrawerChatState extends State<DrawerChat> {
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
            backgroundImage: AssetImage("images/9.png"),
          ),
        ),
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
            ),
          ),
          BubbleBottomBarItem(
              activeIcon: Icon(
                Icons.people,
                color: Colors.red,
              ),
              backgroundColor: Colors.deepPurple,
              title: Text("Appel", style: TextStyle(color: Colors.white)),
              icon: Icon(Icons.people, color: Colors.black)),
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
              color: Color(0XFF0197d2),
              image: DecorationImage(
                  image: AssetImage("images/9.png"), fit: BoxFit.cover),
            ),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage("images/10.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Flutter Chat",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "info@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "profilchat");
                  },
                  leading: Icon(
                    Icons.person,
                    color: Color(0xff0707ed),
                  ),
                  title: Text("Mon profil"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "contChat");
                  },
                  leading: Icon(
                    Icons.contacts,
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
                  title: Text("Parametre"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.share,
                    color: Color(0xff0707ed),
                  ),
                  title: Text("Partager"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget drawerChat(BuildContext context) {
//   return Drawer(
//     child: Column(
//       children: <Widget>[
//         DrawerHeader(
//           decoration: BoxDecoration(
//             color: Color(0XFF0197d2),
//             image: DecorationImage(
//                 image: AssetImage("images/7.png"), fit: BoxFit.cover),
//           ),
//           child: Container(
//             height: 300,
//             width: 300,
//             color: Colors.blue.withOpacity(0.1),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 CircleAvatar(
//                   maxRadius: 30,
//                   backgroundImage: AssetImage("images/10.png"),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Flutter Chat",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 Text(
//                   "info@gmail.com",
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           // child: UserAccountsDrawerHeader(
//           //   accountName: Text("Flutter Chat"),
//           //   accountEmail: Text("info@gmail.com"),
//           //   currentAccountPicture: CircleAvatar(
//           //     backgroundImage: AssetImage("images/10.png"),
//           //   ),
//           // ),
//         ),
//         Expanded(
//           child: ListView(
//             children: <Widget>[
//               ListTile(
//                 leading: Icon(
//                   Icons.person,
//                   color: Color(0XFF0707ED),
//                 ),
//                 title: Text("Mon profil"),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.contacts,
//                   color: Color(0XFF0707ED),
//                 ),
//                 title: Text("Mes contacts"),
//                 onTap: () {
//                   Navigator.pushNamed(context, 'contChat');
//                   // Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.settings,
//                   color: Color(0XFF0707ED),
//                 ),
//                 title: Text("Paramètre"),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 leading: Icon(
//                   Icons.share,
//                   color: Color(0XFF0707ED),
//                 ),
//                 title: Text("Partager"),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },

//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
