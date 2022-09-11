import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

// Single child widget
// Multiple children widget

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
            elevation: 0,
            actions: const [
              Icon(Icons.account_circle_outlined,
                  size: 30, color: Colors.amber),
              Icon(
                Icons.settings,
                color: Colors.orange,
                size: 30,
              ),
            ],
          ),
          backgroundColor: Colors.grey.shade300,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello World. This is my first Flutter app.",
              style: TextStyle(
                color: Colors.green.shade200,
                fontSize: 25,
                backgroundColor: Colors.red,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
