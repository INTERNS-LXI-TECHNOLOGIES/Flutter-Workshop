import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:restaurant/models/activity_model.dart';
import 'package:restaurant/models/restaurant_model.dart';
import 'package:restaurant/restaurant_page.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> details = [];
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }
List<Restaurant> restaurants=[
  Restaurant(name: 'Chicken Hut'),
Restaurant(name: 'Papa Entis'),
Restaurant(name: 'Wang'),
];
  List<Activity> activities = [
    Activity(
      imageUrl: 'assets/chickenhut.jpg',
      name: 'Chicken Hut',
      type: 'kebab,pizza',
      startTimes: ['9:00 am', '11:00 am'],
      delivery: 'delivery from 10:50 AM',
      rating: 4,
      spend: 'Min Spend ₹3',
    ),
    Activity(
      imageUrl: 'assets/PAPA.jpg',
      name: 'Papa Enthis',
      type: '',
      startTimes: ['9:00 am', '11:00 am'],
      delivery: 'delivery from 10:50 AM',
      rating: 3,
      spend: 'Min Spend ₹3',
    ),
    Activity(
      imageUrl: 'assets/wang.jpg',
      name: 'Mr Wang',
      type: '',
      startTimes: ['9:00 am', '11:00 am'],
      delivery: 'delivery from 10:50 AM',
      rating: 5,
      spend: 'Min Spend ₹5',
    ),
  ];
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
        // chickenhut details
        Expanded(
            child: ListView.builder(
                itemCount: activities.length,
                itemBuilder: (BuildContext context, int index) {
                  Activity activity = activities[index];
                  return Stack(
                    children: <Widget>[
                      ClipRRect(
                        child: Banner(
                          message: "closed",
                          location: BannerLocation.topEnd,
                          color: Colors.red,
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RestaurantPage()),),//restaurant page class comes here
                            child: Container(
                              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 0),
                              height: 220.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    100.0, 20.0, 20.0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          activity.name,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      activity.type,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        //delivery
                                        Text(
                                          activity.delivery,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        //spend
                                        Text(
                                          activity.spend,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            color: Colors.yellow[600],
                                            child: Text(
                                              "Free delivery",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        _buildRatingStars(activity.rating),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                            //starttime
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            child: Text(activity.startTimes[0],
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        SizedBox(width: 10.0),
                                        Container(
                                            //endtime
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0)),
                                            child: Text(activity.startTimes[1],
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 20.0,
                          top: 15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              width: 110.0,
                              image: AssetImage(activity.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
                  );
                }))
      ]),
    );
  }
// widget mydetails container

}
