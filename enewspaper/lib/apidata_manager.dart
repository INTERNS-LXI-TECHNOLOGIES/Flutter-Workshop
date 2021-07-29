import 'dart:convert';
import 'package:enewspaper/newsdata.dart';
import 'package:http/http.dart' as http;

class APIData_Manager {
  var url =
      'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&q=vaccination&country=in';
  Future<NewsData> getNews() async {
    var newsModel = null;
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        newsModel = NewsData.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }
    return newsModel;
  }
}

// class APIData_Manager {
//   Future<void> fetchNewsData() async {
//     const url =
//         'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&q=vaccination&country=in';
//     try {
//       final response = await http.get(Uri.parse(url));
//       print(json.decode(response.body));
//     } catch (error) {
//       throw error;
//     }
//   }
// }
