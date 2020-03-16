import 'package:flutter/material.dart';
import '../screen/connexion.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: (BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/amie.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
        )),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    width: 100,
                    height: 100,
                    decoration: (BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/logo.png")))),
                  ),
                  Text(
                    "FlutterChat",
                    style: TextStyle(
                        fontSize: 39,
                        letterSpacing: 1.5,
                        fontFamily: "Billabong",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'conChat');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 56,
                      child: Text(
                        "Connexion",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 1)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'insChat');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 56,
                      child: Text(
                        "Insciption",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff5eacf6), Color(0xff26559b)]),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              height: 20,
              child: Text(
                "Made in Nan",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: "Billabong",
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
