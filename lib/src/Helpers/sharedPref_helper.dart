import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref with ChangeNotifier {
  String token;
  int id;
  String photo;
  String phone;
  String name;
  String email;

  getSharedHelper(SharedPreferences pref) {
    token = pref.get("token");
    id = pref.get("id");
    photo = pref.get("photo");
    phone = pref.get("phone");
    name = pref.get("name");
    email = pref.get("email");

    print(token);
    print(phone);
    print(name);
    print(photo);

    print("i get shared");
    notifyListeners();
  }

  clearPre(SharedPreferences pref) {
    pref.clear();
  }
}
