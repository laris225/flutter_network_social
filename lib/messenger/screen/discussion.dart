import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:td_app/messenger/providers/data/data.dart';

class Discussion extends StatelessWidget {
  List<Widget> discus() {
    return userData
        .map(
          (compteur) => ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage(compteur["imgData"]),
            ),
            title: Text(
              compteur["nameData"],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  child: Text(
                    compteur["msgData"],
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(compteur["dateSendData"]),
              ],
            ),
            trailing: Icon(Icons.check_circle),
          ),
        )
        .toList();
  }

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
          padding: EdgeInsets.only(left: 5, top: 10, right: 20),
          child: Text(
            "Discussions",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
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
                    color: Colors.black87,
                    icon: Icon(FontAwesomeIcons.camera),
                    onPressed: () {})),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.15),
              child: IconButton(
                  color: Colors.black87,
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Navigator.pushNamed(context, 'whatsapp');
                  }),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[300],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Rechercher",
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: (i % 2 == 0)
                                          ? Border.all(
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1),
                                              width: 0,
                                            )
                                          : Border.all(
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1),
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
                                              color: Color.fromRGBO(
                                                  195, 195, 195, 1),
                                            )
                                          : Image.asset("images/6.png"),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 18,
                                      width: 18,
                                      decoration: (i == 0 || i % 2 == 0)
                                          ? BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            )
                                          : BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Prunelle",
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              ...discus(),
            ],
          ),
        ),
      ),
    );
  }
}
