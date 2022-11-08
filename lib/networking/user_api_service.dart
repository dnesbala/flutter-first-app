import 'dart:convert';

import 'package:first_app/networking/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserApiService {
  Future<UserModel?> getUsers() async {
    var url = "https://reqres.in/api/users";
    var uri = Uri.parse(url);

    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var responseStr = response.body;
      var userModel = userModelFromJson(responseStr);
      return userModel;
    } else {
      print("Error");
      return null;
    }
  }
}
