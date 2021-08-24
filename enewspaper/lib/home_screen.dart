import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/catagoryMainPage.dart';
import 'package:enewspaper/catagorypage.dart';
import 'package:enewspaper/news_page.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:enewspaper/searchPage.dart';
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

  final _searchInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * .04,
              ),
              Row(
                children: [
                  headerBox(height, width),
                  SizedBox(width: 10),
                  searchBar(width, context)
                ],
              ),
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
                      catagorySection(context, 'sports',
                          'assets/images/Sports.jpg', 'Sports', ''),
                      SizedBox(
                        width: 20,
                      ),
                      catagorySection(
                          context,
                          'entertainment',
                          'assets/images/Entertainment.jpg',
                          'Entertainment',
                          ''),
                      SizedBox(
                        width: 20,
                      ),
                      catagorySection(context, 'business',
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
      ),
    );
  }

  Container searchBar(double width, BuildContext context) {
    return Container(
      width: width * .6,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search News",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 20),
        ),
        controller: _searchInputController,
        keyboardType: TextInputType.text,
        onSubmitted: (value) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SearchPage(_searchInputController.text),
            ),
          );
        },
        textInputAction: TextInputAction.go,
      ),
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
                                // color: Colors.deepOrangeAccent,
                                height: height * .1,
                                width: width * 0.3,
                                child: snapshot.data.results[index].imageUrl !=
                                        null
                                    ? Image.network(
                                        snapshot.data.results[index].imageUrl,
                                        fit: BoxFit.scaleDown,
                                      )
                                    : Image.asset('assets/images/noimg.png')),
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
            height: height * 0.15,
            width: width * .3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.deepOrangeAccent,
            ),
            child: Image.asset(
              'assets/images/enews_logo.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
