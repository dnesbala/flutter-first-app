import 'dart:convert';

import 'package:first_app/networking/user_api_service.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: FutureBuilder(
        future: UserApiService().getUsers(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          if (snapshot.hasData) {
            var response = jsonDecode(snapshot.data);
            var responseData = response["data"] as List<dynamic>;
            return ListView.builder(
                itemCount: responseData.length,
                itemBuilder: (context, index) {
                  var user = responseData[index];
                  return Image.network(user["avatar"]);
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
