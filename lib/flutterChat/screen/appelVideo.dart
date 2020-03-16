import 'package:flutter/material.dart';

class Appel_Video extends StatelessWidget {
  const Appel_Video({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'msgChat');
            }),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Text(
            "Appel vidéo",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.blue.withOpacity(0.1),
            alignment: Alignment.center,
            child: Text(
              "Prunelle",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/ap.gif"), fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.mic,
                        size: 30,
                      ),
                      Text("Mute"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.volume_up,
                        size: 30,
                      ),
                      Text("Haut parleur"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.videocam,
                        size: 30,
                      ),
                      Text("Video"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: <Widget>[
              FloatingActionButton(
                child: Icon(
                  Icons.call_end,
                  color: Colors.white,
                ),
                backgroundColor: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, 'msgChat');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
