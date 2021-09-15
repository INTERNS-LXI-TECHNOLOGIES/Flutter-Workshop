import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:recharge_app/services/recharge_plan_api.dart';
import 'package:recharge_app/services/recharge_plan_data.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  String mockStringData;
  List<dynamic> allModel;
  @override
  void initState() {
    getData().whenComplete(() async {
      await decodeData();
    });
    super.initState();
  }

  Future getData() async {
    var dio = Dio();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
      var headers = {
        'Authorization':
            'Bearer eyJraWQiOiIwMDA1YzFmMC0xMjQ3LTRmNmUtYjU2ZC1jM2ZkZDVmMzhhOTIiLCJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI5MDE5IiwiaXNzIjoiaHR0cHM6Ly9yZWxvYWRseS5hdXRoMC5jb20vIiwiaHR0cHM6Ly9yZWxvYWRseS5jb20vc2FuZGJveCI6ZmFsc2UsImh0dHBzOi8vcmVsb2FkbHkuY29tL3ByZXBhaWRVc2VySWQiOiI5MDE5IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwiYXVkIjoiaHR0cHM6Ly90b3B1cHMtaHMyNTYucmVsb2FkbHkuY29tIiwibmJmIjoxNjMxNDY0MDYzLCJhenAiOiI5MDE5Iiwic2NvcGUiOiJzZW5kLXRvcHVwcyByZWFkLW9wZXJhdG9ycyByZWFkLXByb21vdGlvbnMgcmVhZC10b3B1cHMtaGlzdG9yeSByZWFkLXByZXBhaWQtYmFsYW5jZSByZWFkLXByZXBhaWQtY29tbWlzc2lvbnMiLCJleHAiOjE2MzY2NTE2NjMsImh0dHBzOi8vcmVsb2FkbHkuY29tL2p0aSI6ImVhY2M0NzI4LTMyMTktNGNjYS05YzAyLWRkYzdlZmNjN2FlNiIsImlhdCI6MTYzMTQ2NDA2MywianRpIjoiZmQwNDNmYWMtYTVjZi00MmEyLThlMTAtMTllMzM1NjFlMzcwIn0.yddrTkPbolnUYq0dOD9EBRJjTnLoyY_V6U7rEF4rot0',
        'Accept': 'application/com.reloadly.topups-v1+json',
        'Content-Type': 'application/json;charset=UTF-8',
      };
      options.headers.addAll(headers);
      return options.data;
    }));

    Response response = await dio.get(
        'https://topups.reloadly.com/operators?page=1&size=2&includeBundles=true&includeData=true&includePin=true&simplified=false&suggestedAmounts=true&suggestedAmountsMap=true');
    setState(() {
      mockStringData = response.toString();
    });
    return response.data;
  }

  Future decodeData() async {
    final Map parsedData = await json.decode(mockStringData);
    setState(() {
      allModel = parsedData['id']['geographicalRechargePlans'];
    });
    print(allModel);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            MaterialButton(
                color: Colors.black,
                onPressed: () {
                  print('Getting the Data....');
                  getData();
                }),
            FutureBuilder(
              future: getData().whenComplete(() async {
                await decodeData();
              }),
              builder: (context, snapshot) {
                return ListTile(
                  title: Text('${snapshot.data}'),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
