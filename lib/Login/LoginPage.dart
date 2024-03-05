import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login/RegisterPage.dart';
import 'package:flutter_application_1/components/my_UserSelector.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_text.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // TextContorllers 
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // hide password
  bool obscurePassword = true; // Variable to toggle password visibility

  // chose profile
  String profile = '';

  // text Widget
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('AllyGR', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              const SizedBox(height: 20),
              // Choose type of account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          profile = 'Coach';
                        });
                      },
                      child: const SelectUser(imagePath: 'lib/images/coach.png', userType: 'Coach',),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          profile = 'Guardian';
                        }); 
                      },
                      child: const SelectUser(imagePath: 'lib/images/guardian.jpg',userType: 'Guardian',),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          profile = 'Player';
                        });
                      },
                      child: const SelectUser(imagePath: 'lib/images/player.jpg', userType: 'Player',),
                    ),
                  ),                  
                ],
              ),


              Column(
                children: [
                  const SizedBox(height: 8), // Adding some spacing
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$profile Profile',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      ),
                    ],
                  ),
                ),
                  const SizedBox(height: 8), // Adding some spacing

                // Email Textfield
                  MyTextField(
                    controller: emailController, 
                    hintText: 'Enter your email',
                    obscureText: false),

                  const SizedBox(height: 16), // Adding some spacing
                  
                  // Pass Textfield

                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 6),

                  const MyText(text: 'Forgot Password?'),

                  const SizedBox(height: 6),

                  // Button
                  MyButton(
                    text: 'Sign In',
                    onTap: (){},
                  ),

                  const SizedBox(height: 10),

                  // Square tile
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: SquareTile(imagePath: 'lib/images/google.png'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SquareTile(imagePath: 'lib/images/apple.png'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SquareTile(imagePath: 'lib/images/yahoo.png'),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SquareTile(imagePath: 'lib/images/facebook.png'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account? '),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage(profile: profile,)),
                            );
                          },
                          child: const Text('Register',
                            style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
