import 'package:flutter/material.dart';
import 'package:shopping_app/Auth/widgets/customText.dart';

import '../../Home/view/home_screen.dart';
import '../widgets/customButton.dart';
import '../widgets/customTextFormField.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    if (value == null || value
        .trim()
        .isEmpty) {
      return "This field is required";
    }
    if (!value.contains('@')) {
      return "Email must include @";
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value != null && value
        .trim()
        .isEmpty) {
      return "this required field";
    }
    if (value!.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(), backgroundColor: Color(0xffab96d1)),
      backgroundColor: Color(0xffab96d1),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffab96d1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Sign in to Bloomify", style: TextStyle(fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Customtext(text: 'Email'),
                          Customtextformfield(
                            hintText: 'Enter your email',
                            controller: _email,
                            validator: validateEmail,
                          ),
                          SizedBox(height: 15),
                          Customtext(text: 'Password'),

                          Customtextformfield(
                            hintText: 'Enter your password',
                            controller: _password,
                            validator: validatePassword,
                          ),
                          SizedBox(height: 15),

                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              child: Custombutton(
                                function: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        backgroundColor: Colors.white,
                                        content: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Account sign-in successfully",
                                                style: TextStyle(
                                                    color: Colors.green),
                                              ),
                                            ),
                                            IconButton(onPressed: () {

                                            }, icon: Icon(Icons.close))
                                          ],
                                        ),
                                      ),);
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
                                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                          return FadeTransition(opacity: animation, child: child);
                                        },
                                        transitionDuration: Duration(milliseconds: 500),
                                      ),
                                    );

                                  }
                                  print("success sign in");
                                },
                                text: 'Sign In',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
