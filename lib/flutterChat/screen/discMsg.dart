import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscMsg extends StatelessWidget {
  const DiscMsg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 1,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 2.5,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            maxRadius: 25,
                            backgroundImage: AssetImage("images/9.png"),
                          ),
                          title: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
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
                          title: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.all(5),
                            width: 300,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 240,
                                        child: Text(
                                            "Coucou, comment tu vas ce après-midi,Coucou, comment tu vas ce après-midiCoucou, comment tu vas ce après-midi"),
                                      ),
                                    ],
                                  ),
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
                          leading: CircleAvatar(
                            maxRadius: 25,
                            backgroundImage: AssetImage("images/9.png"),
                          ),
                          title: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
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
                                          "Coucou, comment tu vas ce après-midi"),
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
                          leading: CircleAvatar(
                            maxRadius: 25,
                            backgroundImage: AssetImage("images/9.png"),
                          ),
                          title: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
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
                                      child: Text("est-ce que tu seras là ?"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text("18h25"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.image), onPressed: null),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Taper message",
                              border: InputBorder.none,
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            // obscureText: true,
                          ),
                        ),
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.1,
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      "Prunelle",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Column(
                      children: <Widget>[
                        PopupMenuButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            itemBuilder: (_) => [
                                  PopupMenuItem(
                                    child: Text("Information"),
                                  ),
                                  PopupMenuItem(
                                    child: Text("Archiver"),
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer"),
                                  ),
                                  PopupMenuItem(
                                    child: Text("Fond d'écran"),
                                  ),
                                ]),
                      ],
                    )
                  ],
                ),
                // child: ListTile(
                //   leading: IconButton(
                //       icon: Icon(
                //         Icons.arrow_back_ios,
                //         color: Colors.black,
                //       ),
                //       onPressed: () {}),
                //   title: Text(
                //     "Prunelle",
                //     style: TextStyle(fontSize: 20, color: Colors.black),
                //   ),
                //   trailing: IconButton(
                //       icon: Icon(
                //         Icons.more_vert,
                //         color: Colors.black,
                //       ),
                //       onPressed: () {}),
                // ),
              ),
            ),
            Positioned(
              top: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "audioChat");
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.videocam,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "videoChat");
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("images/6.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
