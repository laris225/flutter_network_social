import 'package:flutter/material.dart';
import 'package:td_app/whatsapp/screen/intro.dart';

import '../widget/widg_what.dart';
import '../providers/data.dart';

class Disc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Message()),
              // );
              Navigator.pushNamed(context, 'message', arguments: {
                "nom": messageData[i]["nameData"],
                "photo": messageData[i]["imgData"],
                "statut": messageData[i]["stautData"],
              });
            },
            child: WidgWhat(
              img: userData[i]["imgData"],
              name: userData[i]["nameData"],
              msg: userData[i]["msgData"],
              dateadd: userData[i]["dateSendData"],
              nmb: userData[i]["nmbData"],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.comment),
        backgroundColor: Colors.green,
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (BuildContext context) {
          //     return Messenger(context);
          //   }
          //   ),
          // );
        },
      ),
    );
  }
}
