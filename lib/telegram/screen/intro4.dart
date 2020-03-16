import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroTele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('images/6.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  elevation: 7.7,
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Icon(
                      Icons.send,
                      size: 35,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Telegram',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Best application of the chart',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? bouton(context, 50)
                    : bouton(context, 180),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Already have account ? Log In',
                  style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                              FontAwesomeIcons.instagram,
                              color: Colors.pink,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'introinsta');
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
                              FontAwesomeIcons.whatsapp,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'whatsapp');
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bouton(BuildContext context, double marge) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'telegram');
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: marge),
        alignment: Alignment.center,
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(50)),
        child: Text(
          'Get started',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
        ),
      ),
    );
  }
}
