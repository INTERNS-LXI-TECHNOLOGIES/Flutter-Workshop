import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recharge_app/model/rechargeplandata.dart';

class RechargeApi {
  Future<RechargePlanData> fetchOperatorPlans() async {
    String url =
        'https://topups.reloadly.com/operators/countries/IN?includeBundles=true&includeData=true&includePin=true&suggestedAmounts=true&suggestedAmountsMap=true';

    var headers = {
      'Authorization':
          'Bearer eyJraWQiOiIwMDA1YzFmMC0xMjQ3LTRmNmUtYjU2ZC1jM2ZkZDVmMzhhOTIiLCJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI5MDE5IiwiaXNzIjoiaHR0cHM6Ly9yZWxvYWRseS5hdXRoMC5jb20vIiwiaHR0cHM6Ly9yZWxvYWRseS5jb20vc2FuZGJveCI6ZmFsc2UsImh0dHBzOi8vcmVsb2FkbHkuY29tL3ByZXBhaWRVc2VySWQiOiI5MDE5IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwiYXVkIjoiaHR0cHM6Ly90b3B1cHMtaHMyNTYucmVsb2FkbHkuY29tIiwibmJmIjoxNjMxNDY0MDYzLCJhenAiOiI5MDE5Iiwic2NvcGUiOiJzZW5kLXRvcHVwcyByZWFkLW9wZXJhdG9ycyByZWFkLXByb21vdGlvbnMgcmVhZC10b3B1cHMtaGlzdG9yeSByZWFkLXByZXBhaWQtYmFsYW5jZSByZWFkLXByZXBhaWQtY29tbWlzc2lvbnMiLCJleHAiOjE2MzY2NTE2NjMsImh0dHBzOi8vcmVsb2FkbHkuY29tL2p0aSI6ImVhY2M0NzI4LTMyMTktNGNjYS05YzAyLWRkYzdlZmNjN2FlNiIsImlhdCI6MTYzMTQ2NDA2MywianRpIjoiZmQwNDNmYWMtYTVjZi00MmEyLThlMTAtMTllMzM1NjFlMzcwIn0.yddrTkPbolnUYq0dOD9EBRJjTnLoyY_V6U7rEF4rot0',
      'Accept': 'application/com.reloadly.topups-v1+json',
    };
    final response = await http.get(
      Uri.parse(url),
    );
    response.headers.addAll(headers);
    if (response.statusCode == 200) {
      return RechargePlanData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<RechargePlanData> fetchRechargePlans(int operatorCode) async {
    String url =
        'http://planapi.in/api/Mobile/Operatorplan?apimember_id=4116&api_password=Faris@123&cricle=95&operatorcode=$operatorCode';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final rechargePlanData = rechargePlanDataFromJson(response.body);
      return rechargePlanData;
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<RechargePlanData> getPlans() async {
    String url =
        'http://planapi.in/api/Mobile/Operatorplan?apimember_id=4116&api_password=Faris@123&cricle=95&operatorcode=28';

    var client = http.Client();
    var rechargeModel;
    try {
      var response = await client.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        rechargeModel = RechargePlanData.fromJson(jsonMap);
      }
    } catch (e) {
      throw Exception(e);
    }

    return rechargeModel;
  }
}
