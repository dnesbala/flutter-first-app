import 'package:first_app/image_test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: ImageTest(),
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
    );
  }
}
