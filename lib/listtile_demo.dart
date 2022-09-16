import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/test_logo.png"),
          ),
          title: Text("Ram Kumar"),
          subtitle: Text("Hi, How are you?"),
          minLeadingWidth: 40,
          trailing: Column(
            children: [
              Text("12/09/2022"),
              SizedBox(height: 5),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
                child: Text("3"),
              )
            ],
          ),
          onTap: () {
            print("Tapped");
          },
        ),
      ),
    );
  }
}
