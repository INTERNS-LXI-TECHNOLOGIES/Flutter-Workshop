import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
List<String>  details = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/favicon.png', fit: BoxFit.cover),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Badge(
                  badgeColor: Colors.green,
                    badgeContent: Text('3'),
                    child: Icon(
                      Icons.notifications_none,
                      size: 26.0,
                      color: Colors.black,
                    )),
              )),
        ],
      ),
      body: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(
              'assets/iritty.jpg',
              width: 360,
              height: 140,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Image.asset(
                    'assets/pizza.png',
                    width: 175,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Image.asset(
                    'assets/pizza2.jpg',
                    width: 175,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ]),
        Row(children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            color: Colors.grey[200],
            child:
                Text('Whats Nearby                               AthirkadRd'),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              color: Colors.grey[200],
              child: Icon(Icons.edit)),
        ]),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 10,0),
              child: Container(
                child: Material(
                    color: Colors.white,
                    elevation: 10,
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/chickenhut.jpg"),
                            ),
                          ),
                        ),
                        Center(
        child: ClipRect(
          child: Banner(
            message: "closed",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
// height: 50,
                           width: 245 ,
              child: myDetailsContainer1(),
            ),
          ),
        ),
      ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      //    Row(
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.all(5),
      //         child: Container(
      //           child: Material(
      //               color: Colors.white,
      //               elevation: 10,
      //               shadowColor: Color(0x802196F3),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: <Widget>[
      //                   Container(
      //                     width: 100,
      //                     height: 100,
      //                     child: ClipRRect(
      //                       child: Image(
      //                         fit: BoxFit.contain,
      //                         alignment: Alignment.topLeft,
      //                         image: AssetImage("assets/PAPA.jpg"),
      //                       ),
      //                     ),
      //                   ),
      //                    Center(
      //   child: ClipRect(
      //     child: Banner(
      //       message: "closed",
      //       location: BannerLocation.topEnd,
      //       color: Colors.red,
      //       child: Container(
      //         height: 100,
      //                      width: 246 ,

      //         child: myDetailsContainer2(),
      //       ),
      //     ),
      //   ),
      // ),
                      
      //                 ],
      //               )),
      //         ),
      //       ),
      //     ],
      //   ),

      ]),
     
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
              child: Text(
            "Chicken Hut                                        ",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
              child: Text(
            "kebab,pizza                ",
            style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
              child: Text(
            "delivery from 10:52 AM              ",
            style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
              child: Text(
            "Min spend: ₹5",
            style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),
          )),
        ),
         Padding(
          padding: const EdgeInsets.only(right: 6.0),
         child: Container(
          color: Colors.yellow[600],
              child: Text(
            "Free delivery",
            style: TextStyle(color:Colors.white,fontSize: 13.0,fontWeight: FontWeight.bold),
          )
          ),
        ),
        
         Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Container(
              child: Text(
            "5:47 AM to 12:00 PM",
             style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
              Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
              Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
              Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
              Container(child: Icon(Icons.star_half,color: Colors.amber,size: 15.0,),),
              Container(child: Text(' (2)',
              style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),),),
              Container(child: Icon(Icons.favorite_border,color:Colors.grey),),
            ],
          )),
        ),
        
      ],
    );
  }
  //  Widget myDetailsContainer2() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: <Widget>[
  //       Padding(
  //         padding: const EdgeInsets.only(right: 6.0),
  //         child: Container(
  //             child: Text(
  //           "Papa Entis                                      ",
  //           style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
  //         )),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(right: 6.0),
  //         child: Container(
  //             child: Text(
  //           "Delivering From 9:04 AM              ",
  //           style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),
  //         )),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(right: 6.0),
  //         child: Container(
  //             child: Text(
  //           "Min spend: ₹10",
  //           style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),
  //         )),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(right: 6.0),
  //         child: Container(
  //         color: Colors.yellow[600],
  //             child: Text(
  //           "Free delivery",
  //           style: TextStyle(color:Colors.white,fontSize: 13.0,fontWeight: FontWeight.bold),
  //         )),
  //       ),
  //        Padding(
  //         padding: const EdgeInsets.only(right: 6.0),
  //         child: Container(
  //             child: Text(
  //           "5:47 AM to 12:00 PM",
  //            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
  //         )),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(left: 8.0),
  //         child: Container(
  //             child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: <Widget>[
  //             Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
  //             Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
  //             Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
  //             Container(child: Icon(Icons.star,color: Colors.amber,size: 15.0,),),
  //             Container(child: Icon(Icons.star_half,color: Colors.amber,size: 15.0,),),
  //             Container(child: Text(' (2)',
  //             style: TextStyle(color:Colors.grey,fontSize: 13.0,fontWeight: FontWeight.w500),),),
  //             // Container(child: Icon(Icons.favorite_border),),
  //           ],
  //         )),
  //       ),
        
  //     ],
  //   );
  // }
  
}