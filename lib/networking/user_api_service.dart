import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:first_app/networking/models/user_model.dart';
import 'package:http/http.dart' as http;

/* 1. Create a model class for the data you want to fetch from the API.
2. Create a service class to fetch the data from the API.
 - http request (get, post)
 - parse string response data to model class
 - return model
3. Create a screen to display the data.
  - FutureBuilder
  - state variable
 */

class UserApiService {
  Future<Either<String, UserModel?>> getUsers() async {
    var url = "https://reqres.in/api/users";
    var uri = Uri.parse(url).replace(
      queryParameters: {
        "page": "2",
      },
    );

    try {
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        var responseStr = response.body;
        var userModel = userModelFromJson(responseStr);
        return Right(userModel);
      } else {
        return Left("Error");
      }
    } on SocketException catch (e) {
      // throw Exception("No Internet Connection");
      return Left("No Internet Connection");
    } catch (e) {
      rethrow;
    }
  }
}
