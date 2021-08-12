import 'package:enewspaper/CatagoryMainPage.dart';
import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/catagorypage.dart';
import 'package:enewspaper/news_page.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  Future<NewsData> _newsData;
  var image;
  var content;
  var pubDate;
  var creator;
  var title;

  void initState() {
    _newsData = APIData_Manager().fetchNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var catagoryKeyword;
    var catagoryImage;
    var subtitle;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * .04,
            ),
            headerBox(height, width),
            SizedBox(height: 20),
            hotNewstitleSection(),
            SizedBox(height: 10),
            Container(
              height: height * .2,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    catagorySection(context, 'Sports',
                        'assets/images/Sports.jpg', 'Sports', ''),
                    SizedBox(
                      width: 20,
                    ),
                    catagorySection(context, 'Entertainment',
                        'assets/images/Entertainment.jpg', 'Entertainment', ''),
                    SizedBox(
                      width: 20,
                    ),
                    catagorySection(context, 'Business',
                        'assets/images/business.jpg', 'Business', ''),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            newsViewerSection(height, width),
          ],
        ),
      )),
    );
  }

  GestureDetector catagorySection(BuildContext context, catagoryKeyword,
      catagoryImage, catagorytitle, subtitle) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                CatagoryMainPage(catagoryKeyword, catagoryImage)));
      },
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 242,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image.asset(
                  catagoryImage,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: catagorytitle),
                      TextSpan(
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: subtitle),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  // Row catagorySection(String catagoryImage, String title, String subtitle) {
  //   return Row(
  //     children: [
  //       SizedBox(
  //         height: 100,
  //         width: 242,
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(20),
  //           child: Stack(children: [
  //             Image.asset(
  //               catagoryImage,
  //               fit: BoxFit.fill,
  //             ),
  //             Container(
  //               decoration: BoxDecoration(
  //                 gradient: LinearGradient(colors: [
  //                   Color(0xFF343434).withOpacity(0.4),
  //                   Color(0xFF343434).withOpacity(0.15)
  //                 ]),
  //               ),
  //             ),
  //             Padding(
  //               padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  //               child: Text.rich(
  //                 TextSpan(children: [
  //                   TextSpan(
  //                       style: TextStyle(
  //                           fontSize: 18,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white),
  //                       text: title),
  //                   TextSpan(
  //                       style: TextStyle(
  //                           fontSize: 16,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.white),
  //                       text: subtitle),
  //                 ]),
  //               ),
  //             ),
  //           ]),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  SingleChildScrollView newsViewerSection(double height, double width) {
    return SingleChildScrollView(
      child: Container(
        height: height * 0.4,
        child: FutureBuilder<NewsData>(
          future: _newsData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                        elevation: 5,
                        // margin: EdgeInsets.all(5),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Colors.deepOrangeAccent,
                              height: height * .1,
                              width: width * 0.3,
                              // child: Image.network(
                              // snapshot.data.results[index].imageUrl),
                            ),
                          ),
                          title: Text(snapshot.data.results[index].title),
                          subtitle:
                              Text(snapshot.data.results[index].description),
                          onTap: () {
                            var newsData = snapshot.data.results[index];
                            image = newsData.imageUrl;
                            title = newsData.title;
                            pubDate = newsData.pubDate;

                            creator = newsData.sourceId;
                            content = newsData.description;

                            return Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => NewsPage(
                                    title, image, content, creator, pubDate)));
                          },
                        ),
                      ),
                    );
                  });
            } else {
              print('${snapshot.error}');
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }

  Container hotNewstitleSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(left: 10), child: Text('HotNews')),
          Padding(
            padding: EdgeInsets.only(right: 220),
            child: Icon(
              Icons.whatshot,
              color: Colors.redAccent,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CatagoryPage()));
            },
            child: Text('See More!'),
          ),
        ],
      ),
    );
  }

  Container headerBox(double height, double width) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: height * 0.16,
            width: width * .9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrangeAccent),
          ),
          Container(
            height: height * .16,
            alignment: Alignment.center,
            child: Image.network(
                'https://www.freepnglogos.com/uploads/fox-news-png-logo/news-live-png-logo-27.png'),
          ),
        ],
      ),
    );
  }
}
