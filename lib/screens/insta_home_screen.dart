import 'package:first_app/data/post_data.dart';
import 'package:first_app/widgets/insta_post.dart';
import 'package:flutter/material.dart';

import '../widgets/insta_app_bar.dart';

class InstaHomeScreen extends StatelessWidget {
  const InstaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10),
            InstaAppBar(),
            Divider(),
            SizedBox(height: 20),
            // ...posts
            //     .map((post) => Column(
            //           children: [
            //             InstaPost(
            //               post: post,
            //             ),
            //             SizedBox(height: 20),
            //           ],
            //         ))
            //     .toList(),
            Expanded(
              child: ListView.separated(
                itemCount: posts.length, //2
                itemBuilder: (BuildContext context, int index) {
                  return InstaPost(post: posts[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 20);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
