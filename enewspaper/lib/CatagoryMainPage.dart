import 'package:enewspaper/apidata_manager.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:flutter/material.dart';

class CatagoryMainPage extends StatefulWidget {
  @override
  _CatagoryMainPageState createState() => _CatagoryMainPageState();
}

class _CatagoryMainPageState extends State<CatagoryMainPage> {
  Future<NewsData> _newsData;
  void initState() {
    _newsData = APIData_Manager().fetchNewsData();
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
                child: FutureBuilder<NewsData>(
              future: _newsData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container();
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
