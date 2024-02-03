import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:self_practice_work/model/my_model.dart';
import 'package:http/http.dart' as http;

class MyController with ChangeNotifier {
  Map<String, dynamic> decodedData = {};
  SampleApi sampleApiobj = SampleApi();
  Future fetchData() async {
    notifyListeners();
    final Apiurl = Uri.parse("http://3.92.68.133:8000/api/addemployee/");
    final response = await http.get(Apiurl);
    if (response.statusCode == 200) {
      decodedData = jsonDecode(response.body);
      sampleApiobj = SampleApi.fromJson(decodedData);
    } else {
      print("Api failed");
    }
  }
}
