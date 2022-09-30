import 'package:first_app/config/app_routes.dart';
import 'package:first_app/navigation/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page"),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (_) => HomePage()),
                // );
                Navigator.of(context).pushNamed(
                  AppRoutes.home,
                  arguments: {
                    "username": "admin",
                    "password": "1234",
                  },
                );
              },
              child: Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
