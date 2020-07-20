import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  ProductList({Key key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image(
                          height: 90, image: AssetImage("assets/soup.jpg")),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chicken Soup',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            '\$5.99',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ButtonBar(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.remove), onPressed: null),
                              Text("0"),
                              IconButton(
                                  icon: Icon(Icons.add), onPressed: null),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                onPressed: null,
                                highlightColor: Colors.orange,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
