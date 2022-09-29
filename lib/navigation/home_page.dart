import 'package:first_app/navigation/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => ProfilePage()),
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
