import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, Object> args =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(args["photo"]),
              maxRadius: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  args["nom"],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  args["statut"],
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              iconSize: 19,
              icon: Icon(
                FontAwesomeIcons.video,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("images/12.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFC5E9F3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 35,
                  width: 90,
                  child: Text("25 février"),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF9C5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Les messages envoyés dans cette discussion et les appels sont désormais protégés avec le chiffrement de bout en bout Instagram pourrait utiliser une autre entreprise pour stocker, lire et répondre à vos messages et appels. Appuyer pour plus d'informations.",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage(args["photo"]),
                    ),
                    title: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 240,
                                child: Text(
                                    "Coucou, comment tu vas ce après-midi,Coucou, comment tu vas ce après-midiCoucou, comment tu vas ce après-midi"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("12h25"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    trailing: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage("images/8.png"),
                    ),
                    title: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE2FFC6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(5),
                      width: 300,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 240,
                                child: Text(
                                    "Coucou, comment tu vas ce après-midi,Coucou, comment tu vas ce après-midiCoucou, comment tu vas ce après-midi"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text("12h25"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: MediaQuery.of(context).size.width / 1.29,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Taper message",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        prefixIcon: Icon(
                          Icons.mood,
                          color: Colors.grey,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(
                                Icons.attachment,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(
                                Icons.camera_alt,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      // obscureText: true,
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Color(0xff075e54),
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
