import 'package:flutter/material.dart';

class CheckboxTest extends StatefulWidget {
  const CheckboxTest({super.key});

  @override
  State<CheckboxTest> createState() => _CheckboxTestState();
}

class _CheckboxTestState extends State<CheckboxTest> {
  bool _flutterCheckboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            value: _flutterCheckboxValue,
            onChanged: (bool? value) {
              setState(() {
                _flutterCheckboxValue = value!;
              });
            },
            title: Text("Flutter"),
            subtitle: Text("Flutter is awesome"),
            controlAffinity: ListTileControlAffinity.trailing,
            dense: true,
          ),
        ],
      ),
      // Row(
      //   children: [
      //     Checkbox(
      //       value: _flutterCheckboxValue,
      //       onChanged: (bool? value) {
      //         setState(() {
      //           _flutterCheckboxValue = value!;
      //         });
      //       },
      //     ),
      //     Text("Flutter"),
      //   ],
      // ),
    );
  }
}
