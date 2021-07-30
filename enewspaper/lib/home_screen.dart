import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/news_page.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<NewsData> _newsData;
  void initState() {
    _newsData = APIData_Manager().fetchNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
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
            SizedBox(
              height: 50,
            ),
            Container(
              // color: Colors.black,
              height: 370,
              child: FutureBuilder<NewsData>(
                  future: _newsData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data.totalResults,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(2),
                                child: CircleAvatar(
                                  child: Text('01'),
                                ),
                              ),
                              title: Text(snapshot.data.results[index].title),
                              subtitle: Text(
                                  snapshot.data.results[index].description),
                            ),
                          );
                        },
                      );
                    } else {
                      return Text('${snapshot.error}');
                    }
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
