import 'package:flutter/material.dart';

class InstaAppBar extends StatelessWidget {
  const InstaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.camera_alt),
                ),
                Text("Instagram"),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.newspaper),
                      SizedBox(width: 10),
                      Icon(Icons.message),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 20),
            Text("Story"),
          ],
        ),
      ),
    );
  }
}
