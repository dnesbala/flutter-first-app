import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          elevation: 0,
          actions: const [
            Icon(Icons.account_circle_outlined, size: 30, color: Colors.amber),
            Icon(
              Icons.add_location_alt_rounded,
              color: Colors.orange,
              size: 30,
            ),
          ],
        ),
        backgroundColor: Colors.grey[300],
        body: Container(
          padding: EdgeInsets.only(left: 50, top: 40),
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          height: 100,
          width: 200,
          child: Text(
            "This is container",
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                Colors.yellow,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(2, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
