import 'package:flutter/material.dart';

class MyTextStart extends StatelessWidget {
  final String text;

  const MyTextStart({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
      ),
    );
  }
}