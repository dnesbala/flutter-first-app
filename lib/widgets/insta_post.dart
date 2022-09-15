import 'package:flutter/material.dart';

import 'package:first_app/models/post_model.dart';

class InstaPost extends StatelessWidget {
  final PostModel post;

  const InstaPost({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(
                        post.profilePicture,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          post.username,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                    Text(post.location ?? ""),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                print("More options");
              },
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
        SizedBox(height: 5),
        Stack(
          alignment: Alignment.topRight,
          children: [
            Image.network(
              post.postUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(right: 15, top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black54,
              ),
              child: Text(
                "1/3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
