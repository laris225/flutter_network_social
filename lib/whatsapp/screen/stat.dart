import 'package:flutter/material.dart';
import '../providers/data.dart';
import '../widget/widg_stat.dart';

class Stat extends StatelessWidget {
  List<Widget> statutList() {
    return userData
        .map(
          (compteur) => WidgStat(
            img: compteur["imgData"],
            name: compteur["nameData"],
            dateadd: compteur["dateSendData"],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    statutList();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage('images/8.png'),
              ),
              title: Text(
                "Mon statut",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Appuyer pour ajouter un statut"),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Récentes mises à jour",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ...statutList()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            child: Icon(
              Icons.edit,
              color: Color(0xff075e54),
            ),
            backgroundColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              FloatingActionButton(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
