import 'package:flutter/material.dart';

import '../../Auth/view/signIn_screen.dart';
import '../../Auth/view/signUp_screen.dart';
import '../widgets/customButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffab96d1),
      appBar: AppBar(
        backgroundColor: const Color(0xffab96d1),
        title: const Text(
          
          "Bloomify",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Your Premium Shopping Experience",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_1280.jpg",
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/3.jpg",
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Custombutton(text: 'Sign Up', function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SignupScreen()),
                );
              }),
              const SizedBox(height: 10),
              Custombutton(text: 'Sign In', function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SignInScreen()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
