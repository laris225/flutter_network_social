import 'package:flutter/material.dart';
import '../providers/data.dart';
import '../widget/widg_appel.dart';

class Appel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, i) {
          return WidgAppel(
            img: userData[i]["imgData"],
            name: userData[i]["nameData"],
            dateadd: userData[i]["dateSendData"],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call),
          backgroundColor: Colors.green,
          onPressed: () {}),
    );
  }
}
