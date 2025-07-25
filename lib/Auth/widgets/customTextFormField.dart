import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  final TextEditingController? controller;
final  String hintText;
  final String? Function(String?)? validator;

  const Customtextformfield({super.key, required this.controller, required this.hintText,required this.validator});

  @override
  Widget build(BuildContext context) {
    return    TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),

        hintText: hintText,
        // labelText: "Full Name"
      ),
    );
  }
}
