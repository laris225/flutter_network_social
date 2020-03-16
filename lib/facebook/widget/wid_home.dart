import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:td_app/facebook/providers/data/datastory.dart';

class HomeFace extends StatelessWidget {
  const HomeFace({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: liststory.length,
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.only(right: 20, left: 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: (i % 2 == 0 || i == 0)
                          ? Border.all(
                              color: Colors.transparent,
                              width: 0,
                            )
                          : Border.all(
                              color: Color.fromRGBO(0, 132, 255, 1),
                              width: 2,
                            ),
                    ),
                    height: 50,
                    width: 50,
                    child: ClipOval(
                      child: (i == 0)
                          ? IconButton(
                              iconSize: 25,
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.black54,
                              ),
                              color: Color.fromRGBO(195, 195, 195, 1),
                            )
                          : Image.asset(
                              liststory[i].profil,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Container(
                    width: 150,
                    child: (i == 0)
                        ? Text(
                            "Ajouter story",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            liststory[i].name,
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage(liststory[i].background),
              ),
            ),
            height: MediaQuery.of(context).size.height / 3.5,
            width: 120,
          );
        },
      ),
    );
  }
}
