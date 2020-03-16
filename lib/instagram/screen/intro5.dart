import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroInsta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.pink,
                      size: 50,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Instagram",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white)),
                  SizedBox(height: 10),
                  Text("Best Application in the world chat",
                      style: TextStyle(
                          fontSize: 17, color: Colors.white.withOpacity(0.5))),
                ],
              ),
              Column(
                children: <Widget>[
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? Grennbtn(context, 50)
                      : Grennbtn(context, 180),
                  SizedBox(height: 10),
                  Text(
                    "Already have account? Log In",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              iconSize: 20,
                              icon: Icon(FontAwesomeIcons.facebook,
                                  // FontAwesomeIcons.search,
                                  color: Colors.blue),
                              onPressed: () {
                                Navigator.pushNamed(context, 'introface');
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              iconSize: 20,
                              icon: Icon(
                                FontAwesomeIcons.facebookMessenger,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'messenger');
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              iconSize: 20,
                              icon: Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'whatsapp');
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              iconSize: 23,
                              icon: Icon(
                                FontAwesomeIcons.telegram,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, 'introtele');
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              image: AssetImage("images/6.png"),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width),
    );
  }
}

Widget Grennbtn(BuildContext context, double marge) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, 'instagram');
    },
    child: Container(
      alignment: Alignment.center,
      child: Text("Get started",
          style:
              TextStyle(fontSize: 17, color: Colors.white, letterSpacing: 1.5)),
      margin: EdgeInsets.symmetric(horizontal: marge),
      height: 45,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  );
}
