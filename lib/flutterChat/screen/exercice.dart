import 'package:flutter/material.dart';

class Exercice1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
         fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.5,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Container(width: MediaQuery.of(context).size.width,height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                          itemBuilder: (context,i)=>Container(margin: EdgeInsets.only(left: 10,right: 10),
                            padding: EdgeInsets.only(left: 14,top: 7),

                            width: 170,
                            height: 90,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Live",style: TextStyle(color: Colors.white,fontSize: 22),),
                                Text("Broadcast",style: TextStyle(color: Colors.white,fontSize: 22),),
                              ],
                            ),
                          )),

                      ),
                    SizedBox(height: 20,),
                    Container(
                      width:MediaQuery.of(context).size.width,
                      height: 113,

                      child: Column(
                        children: <Widget>[
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 12,),
                                  Container(width: 34,height: 34,child: Icon(Icons.camera,color: Colors.white,),
                                    decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(7),
                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text("Memories",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),

                                ],

                              ),
                              Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 12,),
                                  Container(width: 34,height: 34,child: Icon(Icons.favorite,color: Colors.white,),
                                    decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(7),
                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text("Favourites",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),

                                ],

                              ),
                              Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 12,),
                                  Container(width: 34,height: 34,child: Icon(Icons.present_to_all,color: Colors.white,),
                                    decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(7),
                                    ),

                                  ),
                                  SizedBox(width: 10,),
                                  Text("Presents",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),

                                ],

                              ),
                              Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                            ],
                          ),
                          SizedBox(height: 3,),
                        ],
                      ),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,

                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(Icons.home,color: Colors.grey,size: 32,),
                          Icon(Icons.bookmark_border,color: Colors.grey,size: 32,),
                          Icon(Icons.thumb_up,color: Colors.grey,size: 32,),
                          Icon(Icons.person,color: Colors.purple,size: 32,),
                        ],
                      ),

                    )

                  ],
                ),
              ),

            ),
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: Container(
                color: Colors.purple,
                child: Column(
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(Icons.notifications,color: Colors.white,)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(top: 40,left: 15),
                          width: 200,
                          height: 70,
                          child: Text("Profile",style: TextStyle(fontSize: 40,color: Colors.white),),
                        ),
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 70,

                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(width: 50,height: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(image: AssetImage("images/1.png"))),

                              ),
                              SizedBox(width: 20,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Emma Watson",style: TextStyle(color: Colors.white,fontSize: 24),),
                                  Text("new york",style: TextStyle(color: Colors.white,fontSize: 17),),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ),
                    Container(margin: EdgeInsets.only(left: 13,top: 10),
                        width: 300,
                        height: 70,

                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                           Container(
                             child: Column(
                               children: <Widget>[
                                 SizedBox(height: 16,),
                                 Text("Followers",style: TextStyle(color: Colors.white,fontSize: 16),),
                                 Text("5.7m",style: TextStyle(color: Colors.white,fontSize: 15),),
                               ],
                             ),
                           ),
                            SizedBox(width: 6,),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 6,),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 16,),
                                  Text("Following",style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Text("924",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ],
                              ),
                            ),
                            SizedBox(width: 6,),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 6,),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 16,),
                                  Text("Total Likes",style: TextStyle(color: Colors.white,fontSize: 16),),
                                  Text("1.7k",style: TextStyle(color: Colors.white,fontSize: 15),),
                                ],
                              ),
                            ),

                          ],
                        )
                    ),
                  ],
                )
              ),

            ),
          ],
        ),
      ),
    );
  }
}
