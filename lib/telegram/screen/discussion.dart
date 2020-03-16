import 'package:flutter/material.dart';

import '../widget/widg_disc.dart';
import '../providers/data/data.dart';

class DiscTele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userData.length,
        itemBuilder: (context, i) {
          return WidgDisc(
              img: userData[i]["imgData"],
              name: userData[i]["nameData"],
              message: userData[i]["msgData"],
              date: userData[i]["dateSendData"],
              nmb: userData[i]["nmbData"]);
        });
  }
}
