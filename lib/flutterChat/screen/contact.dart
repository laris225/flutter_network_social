import 'package:flutter/material.dart';
import '../widget/widg_contact.dart';

class ContChat extends StatelessWidget {
  const ContChat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Contacts",
          style: TextStyle(
              fontSize: 30,
              letterSpacing: 1.5,
              fontFamily: "Billabong",
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: GridView.builder(
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 165,
            childAspectRatio: 0.80,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) {
            return WidgCont();
          }),
    );
  }
}
