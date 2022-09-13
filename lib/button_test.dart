import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Buttons: ElevatedButton, OutlinedButton, TextButton
        child: ElevatedButton(
          onPressed: () {
            print("log in");
          },
          child: Text("Log In"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            fixedSize: MaterialStateProperty.all(Size(150, 40)),
          ),
        ),
      ),
    );
  }
}
