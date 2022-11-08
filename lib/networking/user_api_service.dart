import 'dart:convert';

import 'package:http/http.dart' as http;

class UserApiService {
  Future<dynamic> getUsers() async {
    var url = "https://reqres.in/api/users";
    var uri = Uri.parse(url);

    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var responseStr = response.body;
      var responseJson = jsonDecode(responseStr);
      return responseStr;
    } else {
      print("Error");
    }
  }
}
