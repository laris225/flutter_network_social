import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WidgAppel extends StatelessWidget {
  final String img;
  final String name;
  final String dateadd;
  WidgAppel({@required this.img, this.name, this.dateadd});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: AssetImage(img),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.call_received,
                            size: 15,
                            color: Colors.green,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Text(
                              dateadd,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.video,
                        color: Colors.green,
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 80, right: 20),
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:td_app/providers/data2.dart';

// class WidgAppel extends StatelessWidget {
//   final String img;
//   final String name;
//   final String dateadd;
//   WidgAppel({@required this.img, this.name, this.dateadd});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ListView.builder(
//           itemCount: userData2.length,
//           itemBuilder: (context, i) => Column(
//             children: <Widget>[
//               ListTile(
//                 leading: CircleAvatar(
//                   maxRadius: 30,
//                   backgroundImage: AssetImage(img),
//                 ),
//                 title: Text(
//                   name,
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 trailing: Icon(
//                   FontAwesomeIcons.video,
//                   color: Colors.green,
//                   size: 20,
//                 ),
//                 subtitle: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.call_received,
//                       size: 15,
//                       color: Colors.green,
//                     ),
//                     Text(dateadd),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 90, right: 10),
//                 child: Divider(
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
