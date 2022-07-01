// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quizpage/projectpage.dart';
import 'package:quizpage/researchpage.dart';
enum SingingCharacter {
  Project,
  Research
}

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _Selection();
}

class _Selection extends State<Selection> {
  SingingCharacter? _character = SingingCharacter.Project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15.0),
            ),
            height: 80,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Are you interested in Project or Research oriented work?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            title: const Text('Project'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Project,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Research'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Research,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(
            color: Colors.blue,
            child: Text('Submit'),
            onPressed: () {
              if (_character == SingingCharacter.Project) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Project()),
                );
              }
              else{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Research()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
