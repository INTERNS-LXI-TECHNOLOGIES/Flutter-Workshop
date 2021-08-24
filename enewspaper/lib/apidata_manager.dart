import 'dart:convert';
import 'package:enewspaper/newsdata.dart';
import 'package:http/http.dart' as http;

class APIData_Manager {
  Future<NewsData> fetchNewsData() async {
    var url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }

  Future<NewsData> fetchSearchData(String searchText) async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&q=$searchText';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchCatagoryNewsData(String catagoryKeyword) async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&category=$catagoryKeyword';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchMediaNewsData(String mediaKeyword) async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&domain=$mediaKeyword';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }
}
