import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
// import 'package:recharge_app/services/recharge_plan_data.dart';

class RechargeApi {
  Future fetchOperatorDetails() async {
    String url =
        'https://www.kwikapi.com/api/v2/operator_codes.php?api_key=4ddf5d-cd6575-4822b1-46c431-a28d4b';
    var request = http.Request(
      'GET',
      Uri.parse(url),
    );
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      throw response.reasonPhrase;
    }
  }

  // Future<RechargePlanData> fetchOperatorPlanDetails(String operatorName) async {
  //   var headers = {};
  //   var operatorCode;
  //   if (operatorName == 'jio') {
  //     operatorCode = 8;
  //   } else if (operatorName == 'airtel') {
  //     operatorCode = 1;
  //   } else if (operatorName == 'vi') {
  //     operatorCode = 21;
  //   } else if (operatorName == 'bsnl') {
  //     operatorCode = 4;
  //   }
  //   var request = http.MultipartRequest(
  //       'POST', Uri.parse('https://www.kwikapi.com/api/v2/recharge_plans.php'));
  //   request.fields.addAll({
  //     'api_key': '4ddf5d-cd6575-4822b1-46c431-a28d4b',
  //     'state_code': '14',
  //     'opid': '$operatorCode'
  //   });
  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 201) {
  //     return RechargePlanData.fromJson(
  //         jsonDecode(await response.stream.bytesToString()));
  //   } else {
  //     throw response.reasonPhrase;
  //   }
  // }

  // Future fetchRechargePlans(String operatorName) async {
  //   final String url =
  //       'https://topups.reloadly.com/operators?page=1&size=2&includeBundles=true&includeData=true&includePin=true&simplified=false&suggestedAmounts=true&suggestedAmountsMap=true';
  //   final response = await http.get(Uri.parse(url), headers: {
  //     HttpHeaders.authorizationHeader: 'qhl429KPwvPqmVhOkxYE6Z5P72WMZcvz',
  //     HttpHeaders.acceptHeader: 'Application/json',
  //     HttpHeaders.contentTypeHeader: 'application/json;charset-UTF-8',
  //   });

  // }
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
      return options.data;
    }));

    Response response = await dio.get(url);
    // setState
    return response.data;
  }

  // Future decodeData() {
  //   // final Map parsedData = json.decode(mockStringData);
  //   // final
  // }
}
