import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recharge_app/screens/home_screen.dart';
// import 'package:recharge_app/services/recharge_plan_api.dart';
// import 'package:recharge_app/services/recharge_plan_data.dart';

// import 'package:recharge_app/screens/recharge_screen.dart';

class TariffPlanScreen extends StatefulWidget {
  final String operatorName;
  TariffPlanScreen(this.operatorName);

  @override
  _TariffPlanScreenState createState() => _TariffPlanScreenState(operatorName);
}

class _TariffPlanScreenState extends State<TariffPlanScreen> {
  final String operatorName;
  _TariffPlanScreenState(this.operatorName);
  Future _operatorPlans;
  var operatorCode;
  void initState() {
    super.initState();
    _operatorPlans = fetchRechargePlans();
  }

  @override
  String mockStringData;
  Future fetchRechargePlans() async {
    var dio = Dio();
    final String url =
        'https://topups.reloadly.com/operators?page=1&size=2&includeBundles=true&includeData=true&includePin=true&simplified=false&suggestedAmounts=true&suggestedAmountsMap=true';

    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      var headers = {
        'Accept': 'Application/json',
        'Authorization': 'Bearer qhl429KPwvPqmVhOkxYE6Z5P72WMZcvz',
        'Content-Type': 'application/json;charset-UTF-8',
      };

      options.headers.addAll(headers);
      handler.next(options);
      return options.data;
    }));

    Response response = await dio.get(url);
    setState(() {
      mockStringData = response.data;
    });
    return response.data;
  }

  // Future decodeData() async {
  //   final Map parsedData = json.decode(mockStringData);
  //   print(parsedData[''][]
  // }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.yellow,
          height: height * .27,
          width: width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 30,
                  // child: Image.asset('FlutterLogoStyle'),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_important,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 160),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
            child: Container(
              width: width * 1,
              color: Colors.cyan[50],
              height: height * .8,
              child: Column(
                children: [
                  RaisedButton(onPressed: () async {
                    await fetchRechargePlans().then((value) {
                      print(value);
                    });
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  FutureBuilder(
                    future: _operatorPlans,
                    builder: (context, snapshot) {
                      // snapshot.hasData
                      // ?
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            child: GestureDetector(
                              onTap: () {
                                HomeScreen();
                              },
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.amber[500],
                                  radius: 30,
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: FittedBox(
                                      child: Text(
                                        '\u{20B9} ${snapshot.data}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('${snapshot.data}'),
                                subtitle: Text('validity'),
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          );
                        },
                      );
                      // :
                      //  Text('No Data Available');
                      // return CircularProgressIndicator();
                      return SizedBox();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
