import 'package:flutter/material.dart';

class RowColumnTest extends StatelessWidget {
  const RowColumnTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                height: 300,
                width: 150,
                color: Colors.red,
                child: Text("Red Box"),
              ),
              Container(
                height: 300,
                width: 150,
                color: Colors.green,
                child: Text("Green Box"),
              ),
              Container(
                height: 300,
                width: 150,
                color: Colors.blue,
                child: Text("Blue Box"),
              ),
              Container(
                height: 300,
                width: 150,
                color: Colors.yellow,
                child: Text("Blue Box"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
