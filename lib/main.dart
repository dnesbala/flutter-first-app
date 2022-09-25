import 'package:first_app/checkbox_test.dart';
import 'package:first_app/form_test.dart';
import 'package:first_app/gridview_demo.dart';
import 'package:first_app/listtile_demo.dart';
import 'package:first_app/screens/insta_home_screen.dart';
import 'package:first_app/stateful_test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      debugShowCheckedModeBanner: false,
      home: CheckboxTest(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
    );
  }
}
