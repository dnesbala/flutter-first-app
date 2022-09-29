import 'package:first_app/form_validation_test.dart';
import 'package:first_app/navigation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation/login_page.dart';
import 'navigation/profile_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test App",
      debugShowCheckedModeBanner: false,
      // home:
      //     FormValidationTest(isDarkMode: isDarkMode, toggleTheme: _toggleTheme),
      routes: {
        "/": (_) => LoginPage(),
        "/home": (_) => HomePage(),
        "/profile": (context) => ProfilePage(),
      },
      initialRoute: "/",
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
        // appBarTheme: AppBarTheme(
        //   color: Colors.green,
        //   elevation: 0,
        // ),
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
          accentColor: Colors.amber,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 40),
          headline2: TextStyle(fontSize: 32),
          bodyText1: TextStyle(fontSize: 14, color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
