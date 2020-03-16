//changer l'orrientation de l'écran
//  import 'package:flutter/material.dart';

// class Intro extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print(MediaQuery.of(context).size.height);
//     print(MediaQuery.of(context).orientation);
//     return Scaffold(
//       body: (MediaQuery.of(context).orientation == Orientation.portrait)
//           ? Cont(context, Colors.red)
//           : Cont(context, Colors.green),
//     );
//   }

//   Widget Cont(BuildContext context, Color color) {
//     return Container(
//         color: color,
//         height: MediaQuery.of(context).size.height / 2,
//         width: MediaQuery.of(context).size.width);
//   }
// }

//Widget Grennbtn(BuildContext context, Color color) {
//     return Container(
//          alignment: Alignment.center,
//   child: Text("Get started",
//       style: TextStyle(fontSize: 17, color: Colors.white)),
//   margin: EdgeInsets.symmetric(horizontal: 45),
//   height: 45,
//   width: 250,
//   decoration: BoxDecoration(
//     color: Colors.green,
//     borderRadius: BorderRadius.circular(50),),
// );
//   }
// }
