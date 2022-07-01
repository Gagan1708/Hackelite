// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'longtermproject.dart';
import 'shorttermproject.dart';

enum SingingCharacter { LongTerm, ShortTerm }

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _Project();
}

class _Project extends State<Project> {
  SingingCharacter? _character = SingingCharacter.LongTerm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
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
                'Are you interested in LongTerm or ShortTerm oriented work?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            title: const Text('LongTerm'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.LongTerm,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('ShortTerm'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.ShortTerm,
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
              if (_character == SingingCharacter.LongTerm) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LongProject()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShortProject()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
