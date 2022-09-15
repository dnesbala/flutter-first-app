import 'package:flutter/material.dart';

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/test_logo.png"),
            Positioned(
              top: 20,
              right: 20,
              child: Text("This is image"),
            ),
          ],
        ),
      ),
    );
  }
}
