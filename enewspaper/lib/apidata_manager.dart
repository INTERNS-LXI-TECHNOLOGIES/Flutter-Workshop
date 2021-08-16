import 'dart:convert';
import 'package:enewspaper/newsDataCatagory.dart';
import 'package:enewspaper/newsdata.dart';
import 'package:http/http.dart' as http;

class APIData_Manager {
  Future<NewsData> fetchNewsData() async {
    var url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&q=vaccination&country=in&category=science,technology,sports,health,entertainment';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }

  Future<NewsDataCatagory> fetchNewsCatagoryData() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&domain=indianexpress&category=science,technology,sports,health,entertainment';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsDataCatagory.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }
}
