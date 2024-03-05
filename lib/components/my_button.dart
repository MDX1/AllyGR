import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.8; // Adjust as needed

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonWidth,
        padding: EdgeInsets.all(buttonWidth * 0.1), // Adjust padding based on buttonWidth
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(buttonWidth * 0.1), // Adjust borderRadius based on buttonWidth
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: buttonWidth * 0.05, // Adjust fontSize based on buttonWidth
            ),
          ),
        ),
      ),
    );
  }
}
