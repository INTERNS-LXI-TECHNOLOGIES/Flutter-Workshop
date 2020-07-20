import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './product_list.dart';
import './review.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  int selected = 1;

  Widget checkSegment() {
    if (selected == 0)
      return ProductList();
    else if (selected == 1)
      return ReviewList();
    else
      return Container(
        child: Text("Change this to info List"),
      ); //InfoList()
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new Visibility(
        visible: selected == 0,
        child: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.filter_list)),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.arrow_back, // add custom icons also
            color: Colors.black,
          ),
        ),
        title: Text('MR WANGS', style: TextStyle(color: Colors.black)),
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
            ),
          ),
        ],
      ),
      body: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: FittedBox(
                  child: Image.asset(
                    'assets/wang.jpg',
                    width: 220,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                child: Material(
                    color: Colors.grey[700],
                    elevation: 10,
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width,
                          child: ClipRRect(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "MR WANGS",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 20, 10, 10),
                                            child: Text(
                                              "9:50AM TO 10:50AM",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            )),
                                        RatingBar(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 5,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                      ]),
                                )),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
        DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            onTap: (value) {
              setState(() {
                print(value);
                selected = value;
              });
            },
            tabs: <Widget>[
              Tab(
                text: "Menu",
              ),
              Tab(
                text: "Reviews",
              ),
              Tab(
                text: "Info",
              )
            ],
          ),
        ),
        checkSegment()
      ]),
    );
  }
}
