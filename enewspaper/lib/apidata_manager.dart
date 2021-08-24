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

  Future<NewsData> fetchSportsNews() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&category=sports';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchBusinessNews() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&category=business';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchPoliticsNews() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in,us&category=politics';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchEntertainmentNews() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&category=entertainment';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchTechnologyNews() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&category=technology';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchMedia1News() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&domain=indiatoday';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchMedia2News() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&domain=thehansindia';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchMedia3News() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&domain=indianexpress';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }

  Future<NewsData> fetchMedia4News() async {
    String url =
        'https://newsdata.io/api/1/news?apikey=pub_6555c8e594aa52f948a54f505b72c2f473e&country=in&domain=hindustantimes';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return NewsData.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Load Data');
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
}
