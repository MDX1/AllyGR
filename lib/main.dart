import 'package:flutter/material.dart';
import 'Login/Loginpage.dart';
// import 'Homepage.dart'; // Import the home page file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      initialRoute: '/login', // Set the initial route
      routes: {
        '/login': (context) => LoginPage(),

      },
    );
  }
}
