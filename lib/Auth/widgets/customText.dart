import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final String text;
  const Customtext({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),);
  }
}
