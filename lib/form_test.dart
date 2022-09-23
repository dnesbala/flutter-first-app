import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  const FormTest({super.key});

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final TextEditingController usernameController = TextEditingController();
  String username = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form")),
      body: Column(
        children: [
          Text("Login Form"),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
                hintText: "Enter your Username",
                helperText: "Username should be atleast 4 characters long",
                labelText: "Username",
                prefixIcon: Icon(Icons.account_box),
                suffixIcon: Icon(Icons.search),
              ),
              keyboardType: TextInputType.text,
              cursorColor: Colors.black,
              obscureText: false,
              textInputAction: TextInputAction.send,

              // onChanged: (String value) {
              //   username = value;
              //   print(username);
              // },
              // onSubmitted: (String value) {
              //   username = value;
              //   print(username);
              // },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                username = usernameController.text;
              });
            },
            child: Text("Submit"),
          ),
          ElevatedButton(
            onPressed: () {
              usernameController.clear();
              setState(() {
                username = "";
              });
            },
            child: Text("Reset"),
          ),
          Text("Entered value = $username"),
        ],
      ),
    );
  }
}
