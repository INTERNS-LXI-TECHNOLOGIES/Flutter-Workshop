import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/newsDataCatagory.dart';
import 'package:enewspaper/news_page.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:flutter/material.dart';

class CatagoryMainPage extends StatefulWidget {
  @override
  _CatagoryMainPageState createState() => _CatagoryMainPageState();
}

class _CatagoryMainPageState extends State<CatagoryMainPage> {
  Future<NewsDataCatagory> _newsDataCatagory;
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
            color: Colors.black,
            height: height * .2,
            width: double.infinity,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // color: Colors.blue,
            height: height * .6,
            child: SingleChildScrollView(
                child: FutureBuilder<NewsDataCatagory>(
              future: _newsDataCatagory,
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
                                color: Colors.blue,
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
                              String image = newsData.imageUrl;
                              String title = newsData.title;
                              var pubDate = newsData.pubDate;

                              String creator = newsData.sourceId;
                              String content = newsData.description;

                              return Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => NewsPage(title,
                                          image, content, creator, pubDate)));
                            },
                          ),
                        ),
                      );
                    },
                  );
                } else {}
                return Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}
