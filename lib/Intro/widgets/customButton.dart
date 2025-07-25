import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
 final String text;
  final void Function()? function;

  const Custombutton({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width/2,
    //  double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed:function,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffab96d1),
            fontWeight: FontWeight.bold

          ),
        ),
      ),
    );
  }
}
