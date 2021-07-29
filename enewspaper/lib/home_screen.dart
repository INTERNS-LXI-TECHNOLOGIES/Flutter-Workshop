import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<NewsData> _newsData;
  void initState() {
    _newsData = APIData_Manager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Hot News',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 200),
                    child: Icon(
                      Icons.whatshot,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text('See More'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    SizedBox(
                      width: 242,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/splash_1.png'),
                      ),
                    ),
                    SizedBox(
                      width: 242,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/splash_1.png'),
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                // color: Colors.black,
                width: double.infinity,
                height: 400,
                child: FutureBuilder<NewsData>(
                    future: _newsData,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data.totalResults,
                            itemBuilder: (context, index) {
                              var article = snapshot.data.results[index];
                              return Container(
                                height: 100,
                                child: Row(
                                  children: [
                                    Text(article.title),
                                    // Text(article.keywords[index]),
                                    // Image.network(article.imageUrl),
                                  ],
                                ),
                              );
                            });
                      }
                      // return;
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
