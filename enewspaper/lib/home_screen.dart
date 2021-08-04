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
  var image;
  var pubDate;
  var title;
  var content;
  var creator;

  void initState() {
    _newsData = APIData_Manager().fetchNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Random randomImageNumber = Random();
    // int imageNumber = randomImageNumber.nextInt(15);
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
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Container(
                    child: Image.network(
                        'https://www.freepnglogos.com/uploads/fox-news-png-logo/news-live-png-logo-27.png'),
                    alignment: Alignment.center,
                    // child: Text('sample'),
                  ),
                ],
              ),
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
            // FutureBuilder<NewsData>(builder: (context, snapshot) {
            //   return SingleChildScrollView(
            //       scrollDirection: Axis.horizontal,
            //       child: ListView.builder(itemBuilder: (context, index) {
            //         return Row(
            //           children: [
            //             SizedBox(
            //               width: 242,
            //               height: 150,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(20),
            //                 child: Stack(children: [
            //                   Image.asset(
            //                     'assets/images/pic1.jpg',
            //                     fit: BoxFit.fill,
            //                   ),
            //                   Container(
            //                     decoration: BoxDecoration(
            //                         gradient: LinearGradient(colors: [
            //                       Color(0xFF343434).withOpacity(0.4),
            //                       Color(0xFF343434).withOpacity(0.15)
            //                     ])),
            //                   ),
            //                   Padding(
            //                     padding: EdgeInsets.symmetric(
            //                         horizontal: 15, vertical: 10),
            //                     child: Text.rich(
            //                       TextSpan(children: [
            //                         TextSpan(
            //                             style: TextStyle(
            //                                 fontSize: 18,
            //                                 fontWeight: FontWeight.bold,
            //                                 color: Colors.white),
            //                             text: 'Tech News\n'),
            //                         TextSpan(
            //                             style: TextStyle(
            //                                 fontSize: 16,
            //                                 fontWeight: FontWeight.bold,
            //                                 color: Colors.white),
            //                             text: 'Tech News'),
            //                       ]),
            //                     ),
            //                   ),
            //                 ]),
            //               ),
            //             ),
            //           ],
            //         );
            //       }));
            // }),
            SizedBox(
              height: 20,
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
                          // int arrayIndex = 0;
                          // List<int> newsIndex = [arrayIndex++];
                          return Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                            child: ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(2),
                                child: CircleAvatar(
                                    // child: Text(newsIndex.toString()),
                                    ),
                              ),
                              title: Text(snapshot.data.results[index].title),
                              subtitle: Text(
                                  '${snapshot.data.results[index].description}'),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  image = snapshot.data.results[index].imageUrl;
                                  pubDate =
                                      snapshot.data.results[index].pubDate;
                                  content =
                                      snapshot.data.results[index].content;
                                  title = snapshot.data.results[index].title;
                                  creator =
                                      snapshot.data.results[index].creator;
                                  return NewsPage(
                                      title, image, content, creator, pubDate);
                                }));
                              },
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
