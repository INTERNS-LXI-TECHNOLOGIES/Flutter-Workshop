import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/newsDataCatagory.dart';
import 'package:enewspaper/news_page.dart';
import 'package:flutter/material.dart';

class CatagoryMainPage extends StatefulWidget {
  final String catagoryKeyword;
  final String imageUrl;
  CatagoryMainPage(this.catagoryKeyword, this.imageUrl);

  @override
  _CatagoryMainPageState createState() =>
      _CatagoryMainPageState(catagoryKeyword, imageUrl);
}

class _CatagoryMainPageState extends State<CatagoryMainPage> {
  Future<NewsDataCatagory> _newsDataCatagory;
  final String imageUrl;
  final String catagoryKeyword;

  _CatagoryMainPageState(this.catagoryKeyword, this.imageUrl);
  void initState() {
    _newsDataCatagory = APIData_Manager().fetchNewsCatagoryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var catagory;
    return Scaffold(
      appBar: AppBar(
        title: Text('E-News'),
      ),
      body: Column(
        children: [
          Container(
            // color: Colors.black,
            height: height * .2,
            width: double.infinity,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * .59,
            width: double.infinity,
            child: FutureBuilder<NewsDataCatagory>(
                future: _newsDataCatagory,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    for (var index = 0;
                        index <= snapshot.data.results[index].keywords.length;
                        index++) {
                      var data = snapshot.data.results[index];
                      var title;
                      var imageurl;
                      var content;
                      var creator;
                      var pubDate;
                      if (data.keywords != null) {
                        if (data.keywords[index] == catagoryKeyword) {
                          Container(
                            child: Card(
                              elevation: 5,
                              child: ListTile(
                                leading: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      color: Colors.deepOrangeAccent,
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                title: Text(data.title),
                                subtitle: Text(data.description),
                                onTap: () {
                                  title = data.title;
                                  content = data.description;
                                  creator = data.sourceId;
                                  pubDate = data.pubDate;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => NewsPage(title,
                                          imageurl, content, creator, pubDate),
                                    ),
                                  );
                                },
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      } else {
                        return Column(
                          children: [
                            Text(
                              'No Data Available on Server',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.grey[800],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              'assets/images/waiting.png',
                              scale: 2.5,
                            ),
                          ],
                        );
                      }
                    }
                    return Center(child: CircularProgressIndicator());
                  } else {
                    throw Exception('${snapshot.error}');
                  }
                }),
          ),
        ],
      ),
    );
  }
}
