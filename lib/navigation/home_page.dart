import 'package:flutter/material.dart';

import 'package:first_app/navigation/profile_page.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> userInfo;
  const HomePage({
    Key? key,
    required this.userInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            Text("Username = ${userInfo['username']}"),
            Text("Password = ${userInfo['password']}"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  "/profile",
                  (route) => false,
                );
              },
              child: Text("Profile Page"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
