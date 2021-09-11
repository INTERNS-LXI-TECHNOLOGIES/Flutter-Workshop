import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  Dio dio = Dio();
  // Future postData() async {
  //   final String pathUrl = 'https://www.kwikapi.com/api/v2/recharge_plans.php';
  //   var data = {
  //     'api_key': '4ddf5d-cd6575-4822b1-46c431-a28d4b',
  //     'state_code': '14',
  //     'opid': '1'
  //   };
  //   var response = await dio.post(pathUrl,
  //       data: data,
  //       options: Options(headers: {
  //         'Content-type': 'application/x-www-form-urlencoded',
  //         'Accept': 'Application/json'
  //       }));
  //   return response.data;
  // }
  // void postData() async {
  //   var headers = {};
  //   var request = http.MultipartRequest(
  //       'POST', Uri.parse('https://www.kwikapi.com/api/v2/recharge_plans.php'));
  //   request.fields.addAll({
  //     'api_key': '4ddf5d-cd6575-4822b1-46c431-a28d4b',
  //     'state_code': '1',
  //     'opid': '1'
  //   });

  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  // }
  // Future postData() async {
  //   String url =
  //       "https://topups.reloadly.com/operators?page=1&size=2&includeBundles=true&includeData=true&includePin=true&simplified=false&suggestedAmounts=true&suggestedAmountsMap=true";
  //   var request = http.MultipartRequest('GET', Uri.parse(url));
  //   request.fields.addAll({
  //     'Authorization': 'Bearer YOUR_ACCESS_TOKEN_HERE',
  //     'Accept': 'application/com.reloadly.topups-v1+json',
  //   });
  //   http.StreamedResponse response = await request.send();
  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  // }

  Future fetchRechargePlans() async {
    var mockStringData;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: MaterialButton(
            color: Colors.black,
            onPressed: () async {
              await fetchRechargePlans().then((value) {
                print(value);
              });
            }),
      )),
    );
  }
}
