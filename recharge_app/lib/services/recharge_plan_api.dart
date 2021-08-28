import 'package:http/http.dart' as http;

class RechargePlanApi {
  Future fetchRechargePlans() async {
    var url = "";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
    } else {
      throw Exception();
    }
  }
}
