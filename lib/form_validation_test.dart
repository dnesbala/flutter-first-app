import 'package:flutter/material.dart';

import 'package:first_app/widgets/custom_textfield.dart';

import 'login_page.dart';

class FormValidationTest extends StatelessWidget {
  final bool isDarkMode;
  final Function toggleTheme;

  const FormValidationTest({
    Key? key,
    required this.isDarkMode,
    required this.toggleTheme,
  }) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
        actions: [
          IconButton(
            onPressed: () {
              toggleTheme();
            },
            icon: isDarkMode ? Icon(Icons.light_mode) : Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              Text("Login Form", style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 20),
              CustomTextField(
                hintText: "Email",
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: "Password",
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  return null;
                },
                isPassword: true,
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    "Navigate to Log In",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
                  final isValidated = _formKey.currentState?.validate();
                  if (isValidated!) {
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(
                    //     content: Text("Form is validated"),
                    //     backgroundColor: Colors.green,
                    //     duration: Duration(seconds: 3),
                    //   ),
                    // );
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Form is validated"),
                            content: Text("You can login now"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("OK"),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("CANCEL"),
                              ),
                            ],
                          );
                        });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Form is not validated"),
                      ),
                    );
                  }
                },
                child: Text(
                  "Log In",
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("+"),
      ),
    );
  }
}
