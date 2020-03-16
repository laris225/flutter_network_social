import 'package:flutter/material.dart';

import '../providers/data/dataadd.dart';
import '../providers/data/datastory.dart';

class Wid_invitation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text("Connaissez-vous ?"),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listadd.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(liststory[i].background),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            listadd[i].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  listadd[i].amis,
                                  style: TextStyle(color: Colors.black54),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(right: 10, left: 3, top: 25),
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color(0XFF217CEF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 25,
                                  child: IconButton(
                                      padding: EdgeInsets.only(
                                        right: 20,
                                      ),
                                      iconSize: 20,
                                      color: Colors.white,
                                      icon: Icon(Icons.person_add),
                                      onPressed: () {}),
                                ),
                                Text(
                                  "AJouter",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 2, top: 25),
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Supprimer",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Voir tout",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black.withOpacity(0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
