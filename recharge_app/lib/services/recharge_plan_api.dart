import 'package:http/http.dart' as http;
import 'package:recharge_app/model/rechargeplandata.dart';

class RechargeApi {
  Future<RechargePlanData> fetchRechargePlans(int operatorCode) async {
    String url =
        'http://planapi.in/api/Mobile/Operatorplan?apimember_id=4116&api_password=Faris@123&cricle=95&operatorcode=$operatorCode';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      final rechargePlanData = rechargePlanDataFromJson(response.body);
      return rechargePlanData;
    } else {
      throw Exception('Failed to Load Data');
    }
  }
}
