import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:td_app/messenger/providers/data/data.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/10.png"),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 10, top: 10, right: 20),
          child: Text(
            "Contacts",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          height: 45,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.15),
                child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.perm_contact_calendar),
                    onPressed: () {})),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.15),
              child: IconButton(
                  color: Colors.black,
                  icon: Icon(Icons.person_add),
                  onPressed: () {}),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "STORIES (5)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 40,
                  decoration: BoxDecoration(
                    // color: Colors.black12,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "ACTIFS (0)",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 5 / 6,
                crossAxisCount: 2,
              ),
              itemCount: 20,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: (i % 2 == 0 || i == 0)
                                      ? Border.all(
                                          color: Colors.transparent,
                                          width: 0,
                                        )
                                      : Border.all(
                                          color: Color.fromRGBO(0, 132, 255, 1),
                                          width: 2,
                                        ),
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ClipOval(
                                  child: (i == 0)
                                      ? IconButton(
                                          iconSize: 25,
                                          icon: Icon(
                                            Icons.add,
                                            size: 30,
                                            color: Colors.black54,
                                          ),
                                          color:
                                              Color.fromRGBO(195, 195, 195, 1),
                                        )
                                      : Image.asset(
                                          "images/8.png",
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 10),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          Colors.black.withOpacity(0.5),
                                      maxRadius: 10,
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          child: Text(
                            "Christalle",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/8.png"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.1), BlendMode.darken),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
