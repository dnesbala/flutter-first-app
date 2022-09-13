import 'package:flutter/material.dart';

class RowColumnTest extends StatelessWidget {
  const RowColumnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey,
          // width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 150,
                  width: 120,
                  color: Colors.red,
                  child: Text("Red Box"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 120,
                  color: Colors.green,
                  child: Text("Green Box"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 120,
                  color: Colors.blue,
                  child: Text("Blue Box"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
