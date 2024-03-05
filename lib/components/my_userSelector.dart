import 'package:flutter/material.dart';

class SelectUser extends StatelessWidget {

  final String imagePath;
  final String userType;

  const SelectUser({super.key, required this.imagePath, required this.userType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Column(
        children: [
          Image.asset(imagePath, height: 100,),
          Text(userType),
        ],
      ),
    );
  }
}