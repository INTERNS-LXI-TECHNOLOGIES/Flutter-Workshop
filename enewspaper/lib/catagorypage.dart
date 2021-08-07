import 'package:flutter/material.dart';

class CatagoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String imageUrl = 'assets/images/Image Banner 2.png';
    String title = 'title\n';
    String subTitle = 'subTitle';
    return Scaffold(
      appBar: AppBar(
        title: Text('E-News'),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 20,
          ),
          Container(
            height: 50,
            child: Text(
              'By Category',
              style: TextStyle(fontFamily: 'Muli', fontSize: 25),
            ),
          ),
          catagorySection(height, width, imageUrl, title, subTitle),
          Divider(
            height: 100,
            thickness: 20,
          ),
        ],
      ),
    );
  }

  Container catagorySection(double height, double width, String imageUrl,
      String title, String subTitle) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              catagoryImages(height, width, imageUrl, title, subTitle),
              catagoryImages(height, width, 'assets/images/Image Banner 2.png',
                  'title', 'subTitle'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              catagoryImages(height, width, imageUrl, title, subTitle),
              catagoryImages(height, width, 'assets/images/Image Banner 2.png',
                  'title', 'subTitle'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              catagoryImages(height, width, imageUrl, title, subTitle),
              catagoryImages(height, width, 'assets/images/Image Banner 2.png',
                  'title', 'subTitle'),
            ],
          )
        ],
      ),
    );
  }

  Container catagoryImages(
    double height,
    double width,
    String imageUrl,
    String title,
    String subTitle,
  ) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      height: height * .12,
      width: width * .47,
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Stack(
            children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF343434).withOpacity(0.1),
                      Color(0xFF343434).withOpacity(.4),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      text: title),
                  TextSpan(
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      text: subTitle),
                ])),
              )
            ],
          ),
        ),
        // onTap: tapLink,
      ),
    );
  }
}
