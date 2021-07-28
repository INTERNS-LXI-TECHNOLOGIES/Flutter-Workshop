import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiData extends StatefulWidget {
  @override
  _ApiDataState createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  getUserData() async {
    var response =
        await http.get(Uri.https('https://newsdata.io', 'api/1/news'));
    var jsonData = jsonDecode(response.body);
    List<User> user = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class User {}
