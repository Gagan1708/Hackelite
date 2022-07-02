// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quizpage/longprojectno.dart';
import 'package:quizpage/longprojectyes.dart';
import 'package:quizpage/longresearchno.dart';
import 'package:quizpage/longresearchyes.dart';

enum SingingCharacter { Yes, No }

class LongResearch extends StatefulWidget {
  const LongResearch({Key? key}) : super(key: key);

  @override
  State<LongResearch> createState() => _LongResearch();
}

class _LongResearch extends State<LongResearch> {
  SingingCharacter? _character = SingingCharacter.Yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 3'),
      ),
      body: Column(
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
                'Are you interested in doing hardware related work?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            title: const Text('Yes'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Yes,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('No'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.No,
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
              if (_character == SingingCharacter.Yes) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LongResearchYes()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LongResearchNO()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
