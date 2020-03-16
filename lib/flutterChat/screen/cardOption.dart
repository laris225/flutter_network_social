import 'package:flutter/material.dart';

Widget Cardoption(String nom,IconData icon,String image){
  return Container(margin: EdgeInsets.only(left: 10,right: 10),
    padding: EdgeInsets.only(left: 14,top: 7),

    width: 170,
    height: 90,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage(image,),fit: BoxFit.cover,colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)),),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(backgroundColor: Colors.grey,
            child: Icon(icon,color: Colors.black,)),
        Container(margin: EdgeInsets.only(left: 12,top: 5),
            child: Text(nom,style: TextStyle(color: Colors.white,fontSize: 22),)),
      ],
    ),
  );
}