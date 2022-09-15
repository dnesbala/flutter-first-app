import 'package:flutter/material.dart';

class InstaUI extends StatelessWidget {
  const InstaUI({super.key});

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
            PostHeading(),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.network(
                  "https://cdn.britannica.com/68/178668-050-DA998E6C/Durbar-Square-heart-district-Kathmandu-earthquake-Nepal-April-25-2015.jpg",
                  height: 300,
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
        ),
      ),
    );
  }
}

class PostHeading extends StatelessWidget {
  const PostHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg",
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
                      "joshua_i",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.verified, color: Colors.blue),
                  ],
                ),
                Text("Kathmandu, Nepal"),
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
    );
  }
}

class InstaAppBar extends StatelessWidget {
  const InstaAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
