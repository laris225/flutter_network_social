import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/wid_group.dart';
import '../widget/wid_invit.dart';
import '../widget/wid_publishitem.dart';
import '../widget/wid_home.dart';

class Hom extends StatelessWidget {
  const Hom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("images/1.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.only(left: 25, top: 12),
                  height: 45,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black54, width: 1)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Exprimez-vous",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                      Text("En direct"),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.photo_library,
                        color: Colors.green,
                      ),
                      Text("Photo"),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Colors.grey,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                      ),
                      Text("Visite"),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 7,
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
              ),
            ),
            HomeFace(),
            ...publication(context),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 7,
                width: MediaQuery.of(context).size.width,
                color: Colors.black26,
              ),
            ),
            Wid_invitation(),
            ...publication(context),
            Wid_Group(),
          ],
        ),
      ),
    );
  }
}
