import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewList extends StatefulWidget {
  ReviewList({Key key}) : super(key: key);

  @override
  _ReviewListState createState() => _ReviewListState();
}

class _ReviewListState extends State<ReviewList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Card(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type in your thoughts'),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                RatingBar(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 5,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                IconButton(icon: Icon(Icons.send), onPressed: null)
              ]),
            ]),
          )),
          Card(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Reviews (0)",
              textAlign: TextAlign.center,
            ),
          ))
        ]));
  }
}
