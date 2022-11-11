import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:first_app/networking/models/user_model.dart';
import 'package:http/http.dart' as http;

import '../config/dio_exception.dart';

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
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://reqres.in/api",
    ),
  );

  Future<Either<String, UserModel?>> getUsers() async {
    var url = "/users";
    // var uri = Uri.parse(url).replace(
    //   queryParameters: {
    //     "page": "2",
    //   },
    // );

    try {
      // var response = await http.get(uri);
      var response = await _dio.get(
        url,
        queryParameters: {
          "page": "2",
        },
      );

      if (response.statusCode == 200) {
        var responseJson = response.data;
        var userModel = UserModel.fromJson(responseJson);
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

  Future<bool> addUser({required String name, required String job}) async {
    try {
      var response = await _dio.post(
        "/users",
        data: {
          "name": name,
          "job": job,
        },
      );
      if (response.statusCode == 201) {
        return true;
      }
      return false;
    } on SocketException catch (e) {
      // throw Exception("No Internet Connection");
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> login({required String email, required String password}) async {
    try {
      var response = await _dio.post(
        "/login/",
        data: {
          "email": email,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        var responseJson = response.data;
        var token = responseJson["token"];
        print(token);
      } else {
        var errorJson = response.data;
        var error = errorJson["error"];
        // print(error);
      }
    } on DioError catch (e) {
      throw DioException.fromDioError(e);
    } catch (e) {
      // print(e);
    }
  }
}
