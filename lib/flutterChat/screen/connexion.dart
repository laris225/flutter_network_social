import 'package:flutter/material.dart';

class Connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/amie.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken)),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(
                    "images/logo.png",
                  )),
                ),
                height: 100,
                width: 100,
              ),
              Text(
                "Flutter Chat",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 39,
                    fontFamily: "billabong"),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white, width: 1)),
                    width: 230,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Numero",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.visibility_off,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white, width: 1)),
                    width: 230,
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? Btn(context, 46)
                  : Btn(context, 180),
              SizedBox(
                height: 20,
              ),
              Text(
                "connectez vous aussi",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/F.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/I.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/L.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/twiter.jpg"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Btn(BuildContext context, double marge) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, 'discChat');
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30),
      width: 140,
      height: 56,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.white)),
      child: Text(
        "Connexion",
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
