import 'package:flutter/material.dart';

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
