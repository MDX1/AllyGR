import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/check_box.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textStart.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/phone_number.dart';
import 'package:flutter_application_1/user/CoachPage.dart';
import 'package:flutter_application_1/user/GuardianPage.dart';
import 'package:flutter_application_1/user/PlayerPage.dart';

class RegisterPage extends StatefulWidget {
  final String profile;

  const RegisterPage({super.key, required this.profile});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameSurname = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController countryOfResidence = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController adress = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController county = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  late String profile;

  @override
  void initState(){
    super.initState();
    profile = widget.profile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('AllyGR', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            const Text('Create new account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 5),
            const MyTextStart(text: 'Full name'),
            MyTextField(controller: nameSurname, hintText: 'Enter Full Name', obscureText: false),
            const SizedBox(height: 5),
            const MyTextStart(text: 'Area code'),
            const PhoneNumber(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  CheckBox(),
                  Text('Show username on your profile?'),
                ],
              ),
            ), 
            MyTextField(controller: username, hintText: 'Enter your user name', obscureText: false),
            const SizedBox(height: 5),
            const MyTextStart(text: 'Country of Residence'),
            MyTextField(controller: countryOfResidence, hintText: 'Enter your Country of Residence', obscureText: false),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const MyTextStart(text: 'Postal code'),
                      MyTextField(controller: postalCode, hintText: "Enter postal code", obscureText: false),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const MyTextStart(text: 'Adress'),
                      MyTextField(controller: adress, hintText: "Enter Adress", obscureText: false),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const MyTextStart(text: 'City'),
                      MyTextField(controller: city, hintText: "Enter City", obscureText: false),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const MyTextStart(text: 'County'),
                      MyTextField(controller: county, hintText: "Enter County", obscureText: false),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const MyTextStart(text: 'Email Adress'),
            MyTextField(controller: emailAddress, hintText: "Enter your Email Adress", obscureText: false),

            const SizedBox(height: 5),
            const MyTextStart(text: 'Enter Password'),
            MyTextField(controller: emailAddress, hintText: "Enter your Password", obscureText: false),

            const SizedBox(height: 5),
            const MyTextStart(text: 'Re-enter Password'),
            MyTextField(controller: emailAddress, hintText: "Re-enter your Password", obscureText: false),

        const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  CheckBox(),
                  SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      'I agree with the ',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Terms and Conditions',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  CheckBox(),
                  SizedBox(width: 5),
                  Flexible(
                    child: Text(
                      'I acknowledge the ',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Privacy Policy',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
),
            MyButton(
              onTap: () {
                switch (widget.profile) {
                  case 'Coach':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CoachPage()),
                    );
                    break;
                  case 'Guardian':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GuardianPage()),
                    );
                    break;
                  case 'Player':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PlayerPage()),
                    );
                    break;
                  default:
                    // Handle default case, if needed
                    break;
                }
              },
              text: "Register",
            ),

            const SizedBox(height: 30,),
            ],
        ),
      ),
    );
  }
}
