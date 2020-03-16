import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:td_app/messenger/screen/contact.dart';
import 'package:td_app/messenger/screen/decouverte.dart';
import 'package:td_app/messenger/screen/discussion.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int pageIndex = 0;
  List<Widget> viewList = [
    Discussion(),
    Contact(),
    Decouverte(),
  ];
  void onTappped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewList.elementAt(pageIndex),
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: pageIndex,
        onTap: onTappped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(
              "Discussions",
            ),
            icon: Icon(
              FontAwesomeIcons.solidComment,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Contacts",
            ),
            icon: Icon(
              Icons.people,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("Decouverte"),
            icon: Icon(
              FontAwesomeIcons.solidCompass,
            ),
          ),
        ],
      ),
    );
  }
}
