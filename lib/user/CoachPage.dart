import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textStart.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class CoachPage extends StatefulWidget {
  const CoachPage({super.key});

  @override
  State<CoachPage> createState() => _CoachPageState();
}

class _CoachPageState extends State<CoachPage> {
  TextEditingController searchTeamController = TextEditingController();

  List<String> mockTeams = [
  'Team A',
  'Team B',
  'Team C',
  'Team D',
  // Add more teams as needed
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AllyGR Coach Page',style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_back),),),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 15),
            const Text('Search for a team', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const MyTextStart(text: 'Team name'),
            MyTextField(controller: searchTeamController, hintText: 'Insert Team Name', obscureText: false),
            const SizedBox(height: 10),  
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView.builder(
                  itemCount: mockTeams.length, // Assuming mockTeams is your list of mock data
                  itemBuilder: (context, index) {
                    final team = mockTeams[index]; // Assuming each item in mockTeams is a string representing team name
                    return Card(
                      color: Colors.grey[100],
                      child: ListTile(
                        title: Text(team),
                        // You can add more information about the team here if needed
                        // subtitle: Text('Additional Information'),
                        // onTap: () {
                        //   // Handle tap on a team
                        // },
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Row(children: <Widget> [
              Expanded(child: MyButton(onTap: (){}, text: "Link")),
              const SizedBox(width: 10),  
              Expanded(child: MyButton(onTap: (){}, text: "Ask access")),
              const SizedBox(width: 10),  
              Expanded(child: MyButton(onTap: (){}, text: "Mirror Team")),
            ],),
            const SizedBox(height: 10,),
            MyButton(onTap: (){}, text: 'Search'),
            const SizedBox(height: 10,),
          ],
        ),

      ),
    );
  }
}