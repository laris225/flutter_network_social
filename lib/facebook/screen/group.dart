import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/postgroup.dart';

class Group extends StatelessWidget {
  const Group({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Groupes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blueGrey.withOpacity(0.25),
                    child: Icon(
                      FontAwesomeIcons.search,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            Scrol1(),
            Scrol2(),
            ...publication(context),
          ],
        ),
      ),
    );
  }
}

// **************************************************

class Scrol1 extends StatelessWidget {
  const Scrol1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.only(left: 15),
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.25),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.users,
                    color: Colors.black,
                    size: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Suggestions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// **********************************************************

class Scrol2 extends StatelessWidget {
  const Scrol2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 0, top: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/9.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      width: 80,
                      height: 40,
                      child: Text("Flutter Dev"),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
