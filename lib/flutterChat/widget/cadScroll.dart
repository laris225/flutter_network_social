import 'package:flutter/material.dart';

import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class CardScroll extends StatefulWidget {
  CardScroll({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CardScroll createState() => new _CardScroll();
}

class _CardScroll extends State<CardScroll> {
  double size = 10.0;
  double activeSize = 10.0;

  PageController controller;

  @override
  void initState() {
    controller = new PageController();
    super.initState();
  }

  @override
  void didUpdateWidget(CardScroll oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/tous.jpg"), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find best deals",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
      new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/ta.jpg"), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find best deals",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
      new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/amis.jpg"), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find best deals",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      ),
      new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("images/monde.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Find best deals",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                height: 60,
                child: Text(
                  "Find deals for any season from cosy country homes to city flats",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ))
          ],
        ),
      )
    ];
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          "Bienvenue",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            child: new Stack(
              children: <Widget>[
                new PageView(
                  controller: controller,
                  children: children,
                ),
                new Align(
                  alignment: Alignment.bottomCenter,
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 20.0),
                    child: new PageIndicator(
                      layout: PageIndicatorLayout.DROP,
                      size: size,
                      activeSize: activeSize,
                      controller: controller,
                      space: 5.0,
                      count: 4,
                      color: Colors.black,
                      activeColor: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          MediaQuery.of(context).orientation == Orientation.portrait
              ? Btn(context, 46)
              : Btn(context, 180),
        ],
      ),
    );
  }
}

Widget Btn(BuildContext context, double marge) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, 'introChat');
    },
    child: Container(
      alignment: Alignment.center,
      width: 140,
      height: 56,
      child: Text(
        "Demarrer",
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20),
      ),
      decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff5eacf6), Color(0xff26559b)]),
          borderRadius: BorderRadius.circular(30)),
    ),
  );
}
