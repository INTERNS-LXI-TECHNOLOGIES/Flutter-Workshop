import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:recharge_app/services/recharge_plan_api.dart';
import 'package:recharge_app/services/recharge_plan_data.dart';

// import '';
class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  Dio dio = Dio();

  // Future getData() async {
  //   final String url =
  //       'https://topups.reloadly.com/operators/countries/IN?includeBundles=true&includeData=true&includePin=true&suggestedAmounts=true&suggestedAmountsMap=true';
  //   dio.interceptors.add(
  //       InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
  //     var headers = {
  //       'Authorization':
  //           'Bearer eyJraWQiOiIwMDA1YzFmMC0xMjQ3LTRmNmUtYjU2ZC1jM2ZkZDVmMzhhOTIiLCJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI5MDE5IiwiaXNzIjoiaHR0cHM6Ly9yZWxvYWRseS5hdXRoMC5jb20vIiwiaHR0cHM6Ly9yZWxvYWRseS5jb20vc2FuZGJveCI6ZmFsc2UsImh0dHBzOi8vcmVsb2FkbHkuY29tL3ByZXBhaWRVc2VySWQiOiI5MDE5IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwiYXVkIjoiaHR0cHM6Ly90b3B1cHMtaHMyNTYucmVsb2FkbHkuY29tIiwibmJmIjoxNjMxNDY0MDYzLCJhenAiOiI5MDE5Iiwic2NvcGUiOiJzZW5kLXRvcHVwcyByZWFkLW9wZXJhdG9ycyByZWFkLXByb21vdGlvbnMgcmVhZC10b3B1cHMtaGlzdG9yeSByZWFkLXByZXBhaWQtYmFsYW5jZSByZWFkLXByZXBhaWQtY29tbWlzc2lvbnMiLCJleHAiOjE2MzY2NTE2NjMsImh0dHBzOi8vcmVsb2FkbHkuY29tL2p0aSI6ImVhY2M0NzI4LTMyMTktNGNjYS05YzAyLWRkYzdlZmNjN2FlNiIsImlhdCI6MTYzMTQ2NDA2MywianRpIjoiZmQwNDNmYWMtYTVjZi00MmEyLThlMTAtMTllMzM1NjFlMzcwIn0.yddrTkPbolnUYq0dOD9EBRJjTnLoyY_V6U7rEF4rot0',
  //       'Accept': 'application/com.reloadly.topups-v1+json',
  //     };
  //     options.headers.addAll(headers);
  //     handler.next(options);
  //     return options.data;
  //   }));
  //   Response response = await dio.get(url);
  //   return response.data;
  // }

  Future<RechargePlanData> getData() async {
    String url =
        'https://topups.reloadly.com/operators/countries/IN?includeBundles=true&includeData=true&includePin=true&suggestedAmounts=true&suggestedAmountsMap=true';

    final response = await http.get(Uri.parse(url), headers: {
      HttpHeaders.authorizationHeader:
          'Bearer eyJraWQiOiIwMDA1YzFmMC0xMjQ3LTRmNmUtYjU2ZC1jM2ZkZDVmMzhhOTIiLCJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI5MDE5IiwiaXNzIjoiaHR0cHM6Ly9yZWxvYWRseS5hdXRoMC5jb20vIiwiaHR0cHM6Ly9yZWxvYWRseS5jb20vc2FuZGJveCI6ZmFsc2UsImh0dHBzOi8vcmVsb2FkbHkuY29tL3ByZXBhaWRVc2VySWQiOiI5MDE5IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwiYXVkIjoiaHR0cHM6Ly90b3B1cHMtaHMyNTYucmVsb2FkbHkuY29tIiwibmJmIjoxNjMxNDY0MDYzLCJhenAiOiI5MDE5Iiwic2NvcGUiOiJzZW5kLXRvcHVwcyByZWFkLW9wZXJhdG9ycyByZWFkLXByb21vdGlvbnMgcmVhZC10b3B1cHMtaGlzdG9yeSByZWFkLXByZXBhaWQtYmFsYW5jZSByZWFkLXByZXBhaWQtY29tbWlzc2lvbnMiLCJleHAiOjE2MzY2NTE2NjMsImh0dHBzOi8vcmVsb2FkbHkuY29tL2p0aSI6ImVhY2M0NzI4LTMyMTktNGNjYS05YzAyLWRkYzdlZmNjN2FlNiIsImlhdCI6MTYzMTQ2NDA2MywianRpIjoiZmQwNDNmYWMtYTVjZi00MmEyLThlMTAtMTllMzM1NjFlMzcwIn0.yddrTkPbolnUYq0dOD9EBRJjTnLoyY_V6U7rEF4rot0',
      HttpHeaders.acceptHeader: 'application/com.reloadly.topups-v1+json'
    });
    if (response.statusCode == 200) {
      print(response.body.toString());
    } else {
      throw Exception('Failed to Load Data');
    }
    return RechargePlanData.fromJson(jsonDecode(response.body));
  }

  Future<RechargePlanData> _operator;
  @override
  void initState() {
    _operator = getData();
    super.initState();
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
              future: _operator,
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
