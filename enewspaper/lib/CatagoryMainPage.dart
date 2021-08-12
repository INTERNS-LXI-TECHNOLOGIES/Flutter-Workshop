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
                    return ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        if (snapshot.data.results[index].keywords[index] ==
                            catagoryKeyword) {
                          return Card(
                            elevation: 5,
                            child: ListTile(
                              leading: Padding(
                                padding: EdgeInsets.all(2),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    color: Colors.deepOrangeAccent,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                              title:
                                  Text('${snapshot.data.results[index].title}'),
                              subtitle: Text(
                                  '${snapshot.data.results[index].description}'),
                              onTap: () {
                                var data = snapshot.data.results[index];
                                var title = data.title;
                                var imageUrl = data.imageUrl;
                                var content = data.description;
                                var creator = data.sourceId;
                                var pubDate = data.pubDate;
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NewsPage(title,
                                        imageUrl, content, creator, pubDate)));
                              },
                            ),
                          );
                        } else {
                          return Image.asset('assets/images/waiting.png');
                        }
                      },
                    );
                  } else {
                    // throw Exception('Failed to Load Data');
                  }
                  return Center(child: CircularProgressIndicator());
                }),
          ),
        ],
      ),
    );
  }
}
