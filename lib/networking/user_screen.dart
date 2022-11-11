import 'dart:convert';

import 'package:first_app/networking/user_api_service.dart';
import 'package:flutter/material.dart';

import '../config/dio_exception.dart';
import 'models/user_model.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final userApi = UserApiService();
  UserModel? user;
  String? errorMessage;

  @override
  void initState() {
    fetchUsers();
    super.initState();
  }

  fetchUsers() async {
    var usersData = await userApi.getUsers();

    usersData.fold((l) {
      setState(() {
        errorMessage = l;
      });
    }, (r) {
      setState(() {
        user = r;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: errorMessage != null
          ? Center(child: Text(errorMessage!))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: user?.data.length,
                      itemBuilder: (context, index) {
                        var userData = user?.data[index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(userData?.avatar ??
                                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
                          ),
                          title: Text(userData?.email ?? ""),
                          subtitle: Text(userData?.firstName ?? ""),
                          trailing: Text(userData?.id.toString() ?? ""),
                        );
                      }),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await userApi.login(
                        email: "eve.holt@reqres.insdf",
                        password: "cityslicka1",
                      );
                    } on DioException catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(e.message!),
                        duration: Duration(seconds: 2),
                      ));
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Text("Login User"),
                ),
              ],
            ),
    );
  }
}


/*FutureBuilder<UserModel?>(
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
      ),*/