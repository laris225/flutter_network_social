import 'package:flutter/material.dart';

import '../widget/drawerChat.dart';

class HomeDisc extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            scaffoldkey.currentState.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/7.png"),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Flutter Chat",
          style: TextStyle(
              fontFamily: "Billabong",
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
        ],
      ),
      drawer: DrawerChat(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, 'msgChat');
                      },
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/7.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Prunelle"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Coucou, comment vas ?"),
                        ],
                      ),
                      trailing: Text("15:45"),
                    ),
                  ),
                );
              }),
        ),
      ),
      key: scaffoldkey,
    );
  }
}
