import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screen/discussion.dart';

class Telegram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), iconSize: 25, onPressed: () {})
        ],
      ),
      body: DiscTele(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0XFF3FA4C4),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          maxRadius: 25,
                          backgroundImage: AssetImage("images/9.png"),
                        ),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.solidMoon),
                            color: Colors.white,
                            onPressed: () {}),
                      ],
                    ),
                    Text(
                      'Christalle',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '+225 40 31 92 51',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                        IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            color: Colors.white,
                            onPressed: () {})
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.group), onPressed: () {}),
              title: Text(
                'Nouveau groupe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.lock), onPressed: () {}),
              title: Text(
                'Nouvel échange secret',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(FontAwesomeIcons.bullhorn), onPressed: () {}),
              title: Text(
                'Nouveau canal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.person), onPressed: () {}),
              title: Text(
                'Contacts',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.call), onPressed: () {}),
              title: Text(
                'Appels',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(Icons.bookmark_border), onPressed: () {}),
              title: Text(
                'Messages enregistrés',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              title: Text(
                'Paramètres',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: IconButton(icon: Icon(Icons.add_call), onPressed: () {}),
              title: Text(
                'Inviter des amis',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading:
                  IconButton(icon: Icon(Icons.help_outline), onPressed: () {}),
              title: Text(
                'FAQ Telegram',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent[300],
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          onPressed: () {}),
    );
  }
}
