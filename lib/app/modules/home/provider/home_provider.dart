import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider_with_api/app/modules/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class HomeProvider with ChangeNotifier {
  HomeModel homeModel = HomeModel();
  bool isLoading = true;

  getData() async {
    homeModel = await getAllData();
    isLoading = false;
    notifyListeners();
  }

  Future<HomeModel> getAllData() async {
    try {
      final response =
          await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        homeModel = HomeModel.fromJson(item);
        notifyListeners();
      } else {
        print("error");
      }
    } catch (e) {
      print(e.toString());
    }
    return homeModel;
  }
}
