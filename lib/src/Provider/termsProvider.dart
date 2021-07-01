import 'package:dio/dio.dart';
import 'package:gradproject/src/Models/aboutUsModel.dart';
import 'package:gradproject/src/Repository/networkUtlis.dart';
import 'package:flutter/material.dart';

class TermsProvider with ChangeNotifier {
  String content;
  NetworkUtil _utils = new NetworkUtil();
  AboutUsModel aboutUsModel;
  Future<AboutUsModel> getTerms() async {
    Map<String, String> headers = {};
    Response response =
        await _utils.get("terms-and-conditions", headers: headers);
    if (response.statusCode == 200) {
      print("get terms sucsseful");

      aboutUsModel = AboutUsModel.fromJson(response.data);
      content = aboutUsModel.data.content;
      notifyListeners();
      return AboutUsModel.fromJson(response.data);
    } else {
      print("error get terms data");
      return AboutUsModel.fromJson(response.data);
    }
  }
}
