import 'package:flutter/material.dart';

class DropdownTest extends StatefulWidget {
  const DropdownTest({Key? key}) : super(key: key);

  @override
  State<DropdownTest> createState() => _DropdownTestState();
}

class _DropdownTestState extends State<DropdownTest> {
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dropdown")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                hint: Text("Select Country"),
                value: country,
                items: const [
                  DropdownMenuItem(child: Text("Nepal"), value: "nepal"),
                  DropdownMenuItem(child: Text("India"), value: "india"),
                  DropdownMenuItem(child: Text("USA"), value: "usa"),
                  DropdownMenuItem(child: Text("Others"), value: "others"),
                ],
                onChanged: (value) {
                  setState(() {
                    country = value!;
                  });
                },
              ),
            ),
            Text("Selected country = $country"),
          ],
        ),
      ),
    );
  }
}
