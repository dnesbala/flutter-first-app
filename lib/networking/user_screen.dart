import 'dart:convert';

import 'package:first_app/networking/user_api_service.dart';
import 'package:flutter/material.dart';

import 'models/user_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: FutureBuilder<UserModel?>(
        future: UserApiService().getUsers(),
        builder: (BuildContext context, AsyncSnapshot<UserModel?> snapshot) {
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
            // var response = jsonDecode(snapshot.data);
            var userData = snapshot.data?.data;
            // var responseData = response["data"] as List<dynamic>;
            return ListView.builder(
                itemCount: userData!.length,
                itemBuilder: (context, index) {
                  var user = userData[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        Image.network(user.avatar),
                        Text(user.firstName + " " + user.lastName),
                        Text(user.email),
                      ],
                    ),
                  );
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
